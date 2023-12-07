import 'package:flutter/material.dart';
import 'package:flutter_weather_app/constants/global_colors.dart';
import 'package:intl/intl.dart';

class LocationInfo extends StatelessWidget {
   LocationInfo({
    super.key,required this.city,required this.country
  });
String city;
String country;

DateTime now = DateTime.now();
late String formattedDate = DateFormat('EEEE,MMMM d').format(now);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
              Text(
              city,
               style: Theme.of(context)
                   .textTheme
                   .displaySmall!
                   .copyWith(color: GlobalColors.white),
               textAlign: TextAlign.center,
             ),
             Text(
               country,
               style: Theme.of(context)
                   .textTheme
                   .titleLarge!
                   .copyWith(color: GlobalColors.white),
               textAlign: TextAlign.center,
             ),
             Text(
               formattedDate,
               style: Theme.of(context)
                   .textTheme
                   .titleSmall!
                   .copyWith(color: GlobalColors.systemGrey),
               textAlign: TextAlign.center,
             ),
      ],),
    );
  }
}
