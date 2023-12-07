import 'package:flutter/material.dart';
import 'package:flutter_weather_app/constants/global_colors.dart';
import 'package:flutter_weather_app/constants/page_padding.dart';
import 'package:flutter_weather_app/widgets/location_info.dart';
import 'package:flutter_weather_app/widgets/status_card.dart';
import 'package:flutter_weather_app/widgets/weather_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.primary,
      appBar: AppBar(
        backgroundColor: GlobalColors.primary,
        elevation: 0,
      ),
      body: Padding(
        padding: PagePadding.pagePadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Expanded(flex: 1, child: LocationInfo(city: "Ankara",country: "TR",)),
          Expanded(flex: 2,child: WeatherCard(imagePath: "assets/images/sun_cloud.png",degrees: "20",description: "Rain",)),
          Expanded(child: StatusCard(title: "RainFall", data: "5cm",imagePath: "assets/images/umbrella.png",)),
          Expanded(child: StatusCard(title: "Wind", data: "15km/h",imagePath: "assets/images/wind.png",)),
          Expanded(child: StatusCard(title: "Humidity",data: "%10",imagePath: "assets/images/humidity.png",)),
         
            

            Expanded(flex: 1,child: Container())
          ],
        ),
      ),
    );
  }
}

