import 'package:flutter/material.dart';
import 'package:flutter_weather_app/constants/global_colors.dart';

class RadiusButton extends StatelessWidget {
  const RadiusButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("5-day weather forecast."),
            Icon(Icons.arrow_right_alt_rounded)
          ],
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: GlobalColors.activeButton,
            minimumSize: Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16))),
      ),
    );
  }
}
