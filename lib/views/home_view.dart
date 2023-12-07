import 'package:flutter/material.dart';
import 'package:flutter_weather_app/constants/global_colors.dart';
import 'package:flutter_weather_app/constants/page_padding.dart';
import 'package:flutter_weather_app/viewmodels/home_viewmodel.dart';
import 'package:flutter_weather_app/widgets/location_info.dart';
import 'package:flutter_weather_app/widgets/status_card.dart';
import 'package:flutter_weather_app/widgets/weather_card.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
   HomeView({super.key});
    final HomeViewModel _homeViewModel = Get.put(HomeViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.primary,
      appBar: AppBar(
        backgroundColor: GlobalColors.primary,
        elevation: 0,
      ),
      body: Obx(
        ()=> FutureBuilder(
          future: _homeViewModel.fetchData(),
          builder: (context,snapshot){
            if (snapshot.connectionState==ConnectionState.done) {
              return Padding(
          padding: PagePadding.pagePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Expanded(flex: 1, child: LocationInfo(city: _homeViewModel.data!.name.toString(),country: _homeViewModel.data!.sys!.country!,)),
            
            Expanded(flex: 2,child: WeatherCard(imagePath: "assets/images/sun_cloud.png",degrees: _homeViewModel.data!.main!.temp.toString(),description: _homeViewModel.data!.weather![0].main!,)),
            Expanded(child: StatusCard(title: "Wind", data: "${_homeViewModel.data!.wind!.speed}km/h",imagePath: "assets/images/wind.png",)),
            Expanded(child: StatusCard(title: "Humidity",data: "%${_homeViewModel.data!.main!.humidity}",imagePath: "assets/images/humidity.png",)),
            Expanded(child: StatusCard(title: "Pressure", data: _homeViewModel.data!.main!.pressure.toString(),imagePath: "assets/images/umbrella.png",)),

              
        
              Expanded(flex: 1,child: Container())
            ],
          ),
        );
            }
            return SizedBox();
          },
        ),
      )
    );
  }
}

