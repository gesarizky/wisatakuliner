import 'package:flutter/material.dart';
import 'package:wisatakuliner/model/restaurant_place.dart';
import 'package:wisatakuliner/widgets/favorite_button.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

class DetailMobilePage extends StatelessWidget {
  final RestaurantPlace place;

  const DetailMobilePage({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(place.name)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(place.imageAsset),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const FavoriteButton(),
                      Text(
                        place.name,
                        style: const TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'Staatliches',
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 8.0),
                  Text(place.location, style: informationTextStyle),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.access_time),
                      const SizedBox(width: 16.0),
                      Text(place.openTime),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Text(place.description, style: informationTextStyle),
                  const SizedBox(height: 16.0),
                  Text("Menu:", style: informationTextStyle),
                  const SizedBox(height: 8.0),
                  ...place.menu.map(
                    (item) => Text('${item.label} - ${item.price}'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
