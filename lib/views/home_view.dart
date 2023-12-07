import 'package:flutter/material.dart';
import 'package:flutter_weather_app/constants/global_colors.dart';
import 'package:flutter_weather_app/constants/page_padding.dart';
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
            Text(
              "Ankara,",
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(color: GlobalColors.white),
              textAlign: TextAlign.center,
            ),
            Text(
              "TR",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: GlobalColors.white),
              textAlign: TextAlign.center,
            ),
                Text(
              "Thur,Dec 7",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: GlobalColors.systemGrey),
              textAlign: TextAlign.center,
            ),
            
            WeatherCard(),
          ],
        ),
      ),
    );
  }
}

