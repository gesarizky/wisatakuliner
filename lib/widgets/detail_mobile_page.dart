import 'package:flutter/material.dart';
import 'package:wisatakuliner/model/restaurant_place.dart';
import 'package:wisatakuliner/widgets/favorite_button.dart';

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
                  const FavoriteButton(),
                  Text(
                    place.name,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 8.0),
                  Text(place.location),
                  const SizedBox(height: 8.0),
                  Text(place.openTime),
                  const SizedBox(height: 16.0),
                  Text(place.description),
                  const SizedBox(height: 16.0),
                  Text("Menu:", style: Theme.of(context).textTheme.titleMedium),
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
