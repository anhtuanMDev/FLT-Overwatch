import 'package:flutter/material.dart';

class Heronamecard extends StatelessWidget {
  final String avatar, name, role;
  final BoxDecoration? style;
  const Heronamecard(
      {super.key,
      required this.avatar,
      required this.name,
      required this.role,
      this.style});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    // Get device width and height
    double deviceWidth = mediaQuery.size.width;
    double deviceHeight = mediaQuery.size.height;
    double iconSize = deviceWidth * .06;
    return Padding(
      padding: const EdgeInsets.only(bottom: 5, top: 5, right: 10, left: 10),
      child: Container(
        decoration: style ??
            BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
            ),
        child: Row(
          children: [
            Image.asset(
              avatar,
              width: deviceWidth * 0.19,
              height: deviceHeight * .09,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  name,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                role == 'Tank'
                    ? 'assets/icons/TankIcon.png'
                    : role == 'DPS'
                        ? 'assets/icons/DpsIcon.png'
                        : 'assets/icons/SupportIcon.png',
                width: iconSize,
                height: iconSize,
              ),
            )
          ],
        ),
      ),
    );
  }
}
