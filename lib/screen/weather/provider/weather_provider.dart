import 'package:flutter/material.dart';
import 'package:openweather/screen/weather/model/openwether_model.dart';
import 'package:openweather/util/api_helper.dart';

class WeatherProvider with ChangeNotifier{
  OpenWeatherModel? openWeatherModel;
  Future<void> getWeatherData() async {
    APIHelper apiHelper=APIHelper();
    OpenWeatherModel? w1= await apiHelper.weatherCall();
    openWeatherModel = w1;
    notifyListeners();
  }
}