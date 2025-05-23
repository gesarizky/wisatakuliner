import 'package:flutter/material.dart';
import 'package:wisatakuliner/model/restaurant_place.dart';
import 'package:wisatakuliner/widgets/favorite_button.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

class DetailWebPage extends StatelessWidget {
  final RestaurantPlace place;

  const DetailWebPage({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(place.name)),
      body: Center(
        child: SizedBox(
          width: 1200,
          child: Container(
            width: 800,
            margin: const EdgeInsets.all(16),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: Image.asset(place.imageAsset)),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.only(left: 16.0),
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

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [Text(place.location)],
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(Icons.access_time),
                                const SizedBox(width: 16.0),
                                Text(place.openTime),
                              ],
                            ),
                            const SizedBox(height: 16.0),
                            Text(
                              place.description,
                              style: informationTextStyle,
                            ),
                            const SizedBox(height: 16.0),
                            Text("Menu:", style: informationTextStyle),
                            const SizedBox(height: 8.0),
                            ...place.menu.map(
                              (item) => Text(
                                '${item.label} - ${item.price}',
                                style: informationTextStyle,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
