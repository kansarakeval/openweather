import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:openweather/screen/weather/model/openwether_model.dart';

class APIHelper {
  Future<OpenWeatherModel?> weatherCall({var lat,var lon}) async {
    String apiLink =
        "https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=0b1dda74ce1aef731b37328f6c4b0586";
    var response = await http.get(Uri.parse(apiLink));
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      OpenWeatherModel openWeatherModel = OpenWeatherModel.mapToModel(json);
      return openWeatherModel;
    }
    return null;
  }
}
