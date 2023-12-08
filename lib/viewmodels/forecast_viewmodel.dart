import 'package:flutter_weather_app/models/forecast_model.dart';
import 'package:flutter_weather_app/service/weather_service.dart';
import 'package:flutter_weather_app/viewmodels/home_viewmodel.dart';
import 'package:get/get.dart';


class ForecastViewModel extends GetxController {
    final HomeViewModel _homeViewModel = Get.put(HomeViewModel());

  final WeatherService _weatherService = WeatherService();
  Forecast? datax;

  Future<void> fetchDataForecast() async {
    datax = await _weatherService.fetchForecast(_homeViewModel.city.value);
  }
}
