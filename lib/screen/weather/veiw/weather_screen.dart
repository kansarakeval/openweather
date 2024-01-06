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
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Weather"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text("${providerr!.openWeatherModel!.base}"),
            Text("${providerr!.openWeatherModel!.visibility}"),
            Text("${providerr!.openWeatherModel!.dt}"),
            Text("${providerr!.openWeatherModel!.timezone}"),
            Text("${providerr!.openWeatherModel!.id}"),
            Text("${providerr!.openWeatherModel!.name}"),
            Text("${providerr!.openWeatherModel!.cod}"),
            Text("${providerr!.openWeatherModel!..coordModel!.lat}"),
            Text("${providerr!.openWeatherModel!..coordModel!.lon}"),
          ],
        ),
      ),
    ),);
  }
}
