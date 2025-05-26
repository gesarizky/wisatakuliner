import 'package:flutter/material.dart';
import 'package:wisatakuliner/model/restaurant_place.dart';
import 'package:wisatakuliner/widgets/detail_mobile_page.dart';
import 'package:wisatakuliner/widgets/detail_web_page.dart';

class DetailScreen extends StatelessWidget {
  final RestaurantPlace place;

  const DetailScreen({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(place: place);
        } else {
          return DetailMobilePage(place: place);
        }
      },
    );
  }
}
