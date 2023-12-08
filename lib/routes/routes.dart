
import 'package:flutter_weather_app/views/forecast_view.dart';
import 'package:flutter_weather_app/views/home_view.dart';
import 'package:get/route_manager.dart';


class AppRoutes {
  static const String home = "/";
  static const String forecast = "/forecast";


  static List<GetPage> routes =[


            GetPage(
          name: home,
          page: () => HomeView(),
                transitionDuration: Duration(milliseconds: 250)

        ),
          GetPage(
          name: forecast,
          page: () => ForecastView(),
                transitionDuration: Duration(milliseconds: 250)

        ),
         

              
  ];
}
