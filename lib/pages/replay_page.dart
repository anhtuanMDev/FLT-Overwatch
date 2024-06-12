import 'package:flutter/material.dart';

class ReplayPage extends StatelessWidget {
  const ReplayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Watch Game Replay'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
            "Unfortunately, this feature can only be developed by a Blizzard developers"),
      ),
    );
  }
}
