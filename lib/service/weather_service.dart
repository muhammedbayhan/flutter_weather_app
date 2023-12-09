import 'package:dio/dio.dart';
import 'package:flutter_weather_app/models/forecast_model.dart';
import 'package:flutter_weather_app/models/weather_model.dart';
import 'package:flutter_weather_app/utils/api_config.dart';

class WeatherService {
  Future<WeatherModel?> fetchWeatherData(String? city) async {
    try {
      String endpoint =
          "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=${ApiConfig.openWeatherApiKey}&units=metric";
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
          "https://api.openweathermap.org/data/2.5/forecast?q=$city&appid=${ApiConfig.openWeatherApiKey}&units=metric";
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
