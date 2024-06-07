import 'package:flutter/material.dart';

class DetailHeader extends StatelessWidget {
  final String title;
  const DetailHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.secondary,
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(top: 15, bottom: 5, right: 5, left: 10),
        child: Text(
          title,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }
}
