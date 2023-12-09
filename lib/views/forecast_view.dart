import 'package:flutter/material.dart';
import 'package:flutter_weather_app/constants/global_colors.dart';
import 'package:flutter_weather_app/constants/page_padding.dart';
import 'package:flutter_weather_app/viewmodels/forecast_viewmodel.dart';
import 'package:flutter_weather_app/viewmodels/home_viewmodel.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart'; // intl kütüphanesi eklenmiş

class ForecastView extends StatelessWidget {
  ForecastView({super.key});
  final ForecastViewModel _forecastViewModel = Get.put(ForecastViewModel());
  final HomeViewModel _homeViewModel = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: GlobalColors.primary,
      appBar: AppBar(
        backgroundColor: GlobalColors.primary,
        elevation: 0,
        title: Text(_homeViewModel.city.value),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: PagePadding.pagePadding,
          child: FutureBuilder(
            future: _forecastViewModel.fetchDataForecast(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError || _forecastViewModel.datax == null) {
                  Future.delayed(Duration.zero, () async {});
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }

                return ListView.builder(
                  itemCount: _forecastViewModel.datax!.list!.length,
                  itemBuilder: (context, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      color: Colors.transparent,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          height: 125,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                _forecastViewModel.datax!.list![index]
                                                .weather![0].icon ==
                                            "11d" ||
                                        _forecastViewModel.datax!.list![index]
                                                .weather![0].icon ==
                                            "11n" ||
                                        _forecastViewModel.datax!.list![index]
                                                .weather![0].icon ==
                                            "10n" ||
                                        _forecastViewModel.datax!.list![index]
                                                .weather![0].icon ==
                                            "10d" ||
                                        _forecastViewModel.datax!.list![index]
                                                .weather![0].icon ==
                                            "09d" ||
                                        _forecastViewModel.datax!.list![index]
                                                .weather![0].icon ==
                                            "09n"
                                    ? Colors.blue
                                    : _forecastViewModel.datax!.list![index]
                                                .main!.temp! >=
                                            30
                                        ? Colors.amber
                                        : GlobalColors.primary,
                                GlobalColors.primaryML,
                                GlobalColors.primaryEL,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(left: 10),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${_forecastViewModel.datax!.list![index].main!.temp}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall!
                                            .copyWith(color: GlobalColors.white),
                                      ),
                                      Text(
                                        "${_forecastViewModel.datax!.list![index].weather![0].description!}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall!
                                            .copyWith(color: GlobalColors.white),
                                      ),
                                      Text(
                                        formatDateTime(_forecastViewModel
                                            .datax!.list![index].dtTxt
                                            .toString()),
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall!
                                            .copyWith(color: GlobalColors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Image.asset(
                                    "assets/images/${_forecastViewModel.datax!.list![index].weather![0].icon}.png",
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              }
              return Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ),
    );
  }

  String formatDateTime(String dateTimeString) {
    DateTime dateTime = DateTime.parse(dateTimeString);
    String formattedDate = DateFormat('EEEE, MMMM d ,HH:mm').format(dateTime);
    return formattedDate;
  }
}
