import 'package:flutter/material.dart';
import 'package:openweather/screen/weather/model/openwether_model.dart';
import 'package:openweather/util/api_helper.dart';

class WeatherProvider with ChangeNotifier{
  OpenWeatherModel? openWeatherModel;
  var lat = 21.1702;
  var lon = 72.8311;

  Future<void> getWeatherData() async {
    APIHelper apiHelper = APIHelper();
    OpenWeatherModel? w1= await apiHelper.weatherCall(lat:lat,lon:lon);
    openWeatherModel = w1;
    notifyListeners();
  }

  void changCity(var latitude,var longitude) {
    lat = latitude;
    lon = longitude;
    notifyListeners();
  }

}