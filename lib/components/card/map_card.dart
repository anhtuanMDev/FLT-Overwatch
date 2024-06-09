import 'package:flutter/material.dart';
import 'package:herometrics/models/map_model.dart';

class MapCard extends StatelessWidget {
  const MapCard({
    super.key,
    required this.deviceWidth,
    required this.map,
  });

  final double deviceWidth;
  final MapModel map;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth / 2 - 30,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  map.image,
                  width: deviceWidth / 2 - 30,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 5,
                  right: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surface,
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/gamemodes/${map.gameMode}.png',
                        fit: BoxFit.cover,
                        width: 25,
                        height: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              map.name,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
