import 'package:flutter/material.dart';
import 'package:openweather/screen/weather/provider/weather_provider.dart';
import 'package:provider/provider.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  WeatherProvider? providerr;
  WeatherProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<WeatherProvider>().getWeatherData();
  }

  @override
  Widget build(BuildContext context) {
    providerr = context.read<WeatherProvider>();
    providerw = context.watch<WeatherProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Weather"),
          centerTitle: true,
        ),
        body: Center(
          child: providerw!.openWeatherModel == null
              ? Center(child: CircularProgressIndicator())
              : Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Image.asset(
                        "assets/img/bk.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Center(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "${providerw!.openWeatherModel!.name}",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${providerw!.openWeatherModel!.coordModel!.lon}°C",
                                  style: TextStyle(
                                      fontSize: 24, color: Colors.white),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  "${providerw!.openWeatherModel!.coordModel!.lat}°C",
                                  style: TextStyle(
                                      fontSize: 24, color: Colors.white),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      margin: EdgeInsets.all(10),
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.25,
                                      width: MediaQuery.sizeOf(context).width *
                                          0.42,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Colors.grey.shade50)),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "weather",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Id: ${providerw!.openWeatherModel!.weatherModelList![0].id}",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Main: ${providerw!.openWeatherModel!.weatherModelList![0].main}",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Desc: ${providerw!.openWeatherModel!.weatherModelList![0].description}",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Icon: ${providerw!.openWeatherModel!.weatherModelList![0].icon}",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      margin: EdgeInsets.all(10),
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.25,
                                      width: MediaQuery.sizeOf(context).width *
                                          0.42,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Colors.grey.shade50)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Wind",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Speed: ${providerw!.openWeatherModel!.windModel!.speed}",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Deg: ${providerw!.openWeatherModel!.windModel!.deg}",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      margin: EdgeInsets.all(10),
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.35,
                                      width: MediaQuery.sizeOf(context).width *
                                          0.42,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Colors.grey.shade50)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Main",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Temp: ${providerw!.openWeatherModel!.mainModel!.temp}",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Feels_like: ${providerw!.openWeatherModel!.mainModel!.feels_like}",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Temp_min: ${providerw!.openWeatherModel!.mainModel!.temp_min}",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Temp_max: ${providerw!.openWeatherModel!.mainModel!.temp_max}",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Pressure: ${providerw!.openWeatherModel!.mainModel!.pressure}",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Humidity: ${providerw!.openWeatherModel!.mainModel!.humidity}",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      margin: EdgeInsets.all(10),
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.35,
                                      width: MediaQuery.sizeOf(context).width *
                                          0.42,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Colors.grey.shade50)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Sys",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Country: ${providerw!.openWeatherModel!.sysModel!.country}",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Sunrise: ${providerw!.openWeatherModel!.sysModel!.sunrise}",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Sunset: ${providerw!.openWeatherModel!.sysModel!.sunset}",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Any Details",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Timezone: ${providerw!.openWeatherModel!.timezone}",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "City",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    providerw!.changCity(21.1702, 72.8311);
                    providerr!.getWeatherData();
                    Navigator.pop(context);
                  },
                  child: Text("Surat"),
                ),
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    providerw!.changCity(15.2993, 74.1240);
                    providerr!.getWeatherData();
                    Navigator.pop(context);
                  },
                  child: Text("Goa"),
                ),
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    providerw!.changCity(19.0760, 72.8777);
                    providerr!.getWeatherData();
                    Navigator.pop(context);
                  },
                  child: Text("Mumbai"),
                ),
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    providerw!.changCity(23.0225, 72.5714);
                    providerr!.getWeatherData();
                    Navigator.pop(context);
                  },
                  child: Text("Ahmedabad"),
                ),
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    providerw!.changCity(23.8500, 72.1210);
                    providerr!.getWeatherData();
                    Navigator.pop(context);
                  },
                  child: Text("Patan"),
                ),
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    providerw!.changCity(30.7346, 79.0669);
                    providerr!.getWeatherData();
                    Navigator.pop(context);
                  },
                  child: Text("Kedarnath"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
