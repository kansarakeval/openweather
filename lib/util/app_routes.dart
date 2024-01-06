import 'package:flutter/material.dart';
import 'package:openweather/screen/weather/veiw/weather_screen.dart';
import 'package:openweather/splash/view/splash_screen.dart';


Map<String,WidgetBuilder> appRoutes={
  '/': (context) => const SplashScreen(),
  'weather': (context) => const WeatherScreen(),

};