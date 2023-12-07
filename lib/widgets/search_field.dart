import 'package:flutter/material.dart';
import 'package:flutter_weather_app/constants/global_colors.dart';
import 'package:flutter_weather_app/viewmodels/home_viewmodel.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
    required TextEditingController searchController,
    required HomeViewModel homeViewModel,
  })  : _searchController = searchController,
        _homeViewModel = homeViewModel;

  final TextEditingController _searchController;
  final HomeViewModel _homeViewModel;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      controller: _searchController,
      style: TextStyle(color: GlobalColors.white),
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          color: GlobalColors.white,
        ),
        suffixIcon: IconButton(
            onPressed: () {
              _homeViewModel.city.value = _searchController.text;
              _searchController.clear();
            },
            icon: Icon(
              Icons.arrow_circle_right_rounded,
              color: GlobalColors.white,
            )),
        hintText: 'Search..',
        hintStyle: TextStyle(color: GlobalColors.systemGrey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        filled: true,
        fillColor: GlobalColors.white.withOpacity(0.1),
        contentPadding: EdgeInsets.all(16),
      ),
    );
  }
}
