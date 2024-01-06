import 'package:flutter/material.dart';
import 'package:openweather/screen/weather/provider/weather_provider.dart';
import 'package:openweather/util/app_routes.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => WeatherProvider(),),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: appRoutes,
        ),
      )
  );
}