import 'package:flutter/material.dart';
import 'package:flutter_weather_app/constants/global_colors.dart';

class WeatherCard extends StatelessWidget {
   WeatherCard({
    super.key,required this.imagePath,required this.degrees,required this.description
  });
  String imagePath;
  String degrees;
  String description;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Image.asset(
            imagePath,
            height: MediaQuery.of(context).size.height * 0.175,
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                degrees,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(color: GlobalColors.white),
                textAlign: TextAlign.center,
              ),
              
                       Text(
                description,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: GlobalColors.white),
                textAlign: TextAlign.center,
              ),
              
            ],
          ),
        ),
      ],
    );
  }
}
