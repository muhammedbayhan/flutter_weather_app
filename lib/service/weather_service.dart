import 'package:dio/dio.dart';
import 'package:flutter_weather_app/models/weather_model.dart';

class WeatherService {
  Future<WeatherModel?> fetchWeatherData(String? city) async {
    String endpoint =
        "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=2e37bceb4ed6a24ee3ce101dd2447d8d&units=metric";
    final response = await Dio().get(endpoint);

    if (response.statusCode == 200) {
      final _datas = response.data;
      print(WeatherModel.fromJson(_datas).name);
      return WeatherModel.fromJson(_datas);
    }

    return null;
  }
}
