import 'package:flutter_weather_app/models/weather_model.dart';
import 'package:flutter_weather_app/service/weather_service.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController{
final WeatherService _weatherService=WeatherService();
WeatherModel? data;
var city = "istanbul".obs;


Future<void> fetchData()async{
data=await  _weatherService.fetchWeatherData(city.toString());
}


}