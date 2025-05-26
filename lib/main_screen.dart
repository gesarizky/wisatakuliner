import 'package:flutter/material.dart';
import 'package:wisatakuliner/detail_screen.dart';
import 'package:wisatakuliner/model/restaurant_place.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Wisata Kuliner')),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return RestaurantPlaceList();
          } else if (constraints.maxWidth <= 1200) {
            return RestaurantPlaceGrid(gridCount: 4);
          } else {
            return RestaurantPlaceGrid(gridCount: 6);
          }
        },
      ),
    );
  }
}

class RestaurantPlaceList extends StatelessWidget {
  const RestaurantPlaceList({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final RestaurantPlace place = restaurantPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return DetailScreen(place: place);
                },
              ),
            );
          },
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(flex: 1, child: Image.asset(place.imageAsset)),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          place.name,
                          style: const TextStyle(fontSize: 16.0),
                        ),
                        const SizedBox(height: 10),
                        Text(place.location),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: restaurantPlaceList.length,
    );
  }
}

class RestaurantPlaceGrid extends StatelessWidget {
  final int gridCount;

  const RestaurantPlaceGrid({super.key, required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.count(
        crossAxisCount: gridCount,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: restaurantPlaceList.map((place) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailScreen(place: place);
                  },
                ),
              );
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Image.asset(place.imageAsset, fit: BoxFit.cover),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      place.name,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                    child: Text(place.location),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
