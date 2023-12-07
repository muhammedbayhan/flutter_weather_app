import 'package:flutter/material.dart';
import 'package:flutter_weather_app/constants/global_colors.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          "assets/images/sun_cloud.png",
          height: MediaQuery.of(context).size.height * 0.175,
        ),
        Column(
          children: [
            Text(
              "19",
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(color: GlobalColors.white),
              textAlign: TextAlign.center,
            ),
    
                     Text(
              "Rainy",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: GlobalColors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    );
  }
}
