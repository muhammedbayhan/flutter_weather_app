
import 'package:flutter/material.dart';
import 'package:flutter_weather_app/constants/global_colors.dart';
import 'package:flutter_weather_app/constants/page_padding.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)),
        color: GlobalColors.white.withOpacity(0.5),
        child: Padding(
          padding: PagePadding.cardPadding,
          child: ListTile(
            leading: Icon(Icons.wind_power_rounded),
            title: Text("Wind"),
            trailing: Text("15km/h"),
          ),
        ));
  }
}
