import 'package:flutter/material.dart';

class StatRowText extends StatelessWidget {
  final String name;
  final String value;
  const StatRowText({super.key, required this.name, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 80,
          child: Text(
            name,
            style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).colorScheme.inversePrimary),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          value,
          style: TextStyle(
              fontSize: 14,
              color: Theme.of(context).colorScheme.inversePrimary,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
