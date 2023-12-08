import 'package:dio/dio.dart';
import 'package:flutter_weather_app/models/forecast_model.dart';
import 'package:flutter_weather_app/models/weather_model.dart';

class WeatherService {
  Future<WeatherModel?> fetchWeatherData(String? city) async {
    try {
      String endpoint =
          "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=2e37bceb4ed6a24ee3ce101dd2447d8d&units=metric";
      final response = await Dio().get(
        endpoint,
        options: Options(
          followRedirects: false,
          validateStatus: (status) {
            return status! < 500;
          },
        ),
      );

      if (response.statusCode == 200) {
        final _datas = response.data;
        print(WeatherModel.fromJson(_datas).name);
        return WeatherModel.fromJson(_datas);
      }

      return null;
    } on DioException catch (e) {
      print(e);
    }
  }




    Future<Forecast?> fetchForecast(String? city) async {
    try {
      String endpoint =
          "https://api.openweathermap.org/data/2.5/forecast?q=$city&appid=2e37bceb4ed6a24ee3ce101dd2447d8d&units=metric";
      final response = await Dio().get(
        endpoint,
        options: Options(
          followRedirects: false,
          validateStatus: (status) {
            return status! < 500;
          },
        ),
      );

      if (response.statusCode == 200) {
        final _datas = response.data;
    
        return Forecast.fromJson(_datas);
      }

      return null;
    } on DioException catch (e) {
      print(e);
    }
  }
}
