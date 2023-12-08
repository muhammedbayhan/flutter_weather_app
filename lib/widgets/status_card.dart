import 'package:flutter/material.dart';
import 'package:flutter_weather_app/constants/global_colors.dart';
import 'package:flutter_weather_app/constants/page_padding.dart';

class StatusCard extends StatelessWidget {
  StatusCard(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.data});

  String imagePath;
  String title;
  String data;
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: GlobalColors.white.withOpacity(0.5),
        child: Padding(
          padding: PagePadding.cardPadding,
          child: ListTile(
            leading: Image.asset(
              imagePath,
              height: 100,
            ),
            title: Text(title),
            trailing: Text(data),
          ),
        ));
  }
}
