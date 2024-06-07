import 'package:flutter/material.dart';

class HeroTitle extends StatelessWidget {
  final String avatar, name, role;
  final BoxDecoration? style;

  const HeroTitle({
    super.key,
    required this.avatar,
    required this.name,
    required this.role,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: style ??
          BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
          ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              decoration:
                  BoxDecoration(color: Theme.of(context).colorScheme.primary),
              child: Image.asset(
                avatar,
                width: 75,
                height: 75,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                name,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary),
              ),
              Text(
                role,
                style: const TextStyle(fontSize: 16),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
