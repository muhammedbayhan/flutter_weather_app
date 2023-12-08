import 'package:flutter_weather_app/models/weather_model.dart';
import 'package:flutter_weather_app/service/weather_service.dart';
import 'package:get/get.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class HomeViewModel extends GetxController {
  @override
  void onInit() async {

    getLocation();
  }

  getLocation() async {
 try {
      await Geolocator.checkPermission();
    await Geolocator.requestPermission();
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print(position);
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    city.value = placemarks[0].locality.toString();
 } catch (e) {
   print(e);
 }
  }

  final WeatherService _weatherService = WeatherService();
  WeatherModel? data;
  var city = "ankara".obs; //in case of any error ankara will be shown

  Future<void> fetchData() async {
    data = await _weatherService.fetchWeatherData(city.toString());
  }
}
