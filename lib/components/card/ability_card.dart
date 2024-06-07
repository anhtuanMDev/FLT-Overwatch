import 'package:flutter/material.dart';
import 'package:herometrics/models/ability_model.dart';

class AbilityCard extends StatelessWidget {
  final AbilityModel infor;
  const AbilityCard({Key? key, required this.infor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 18, right: 5, top: 8, bottom: 8),
            child: Row(
              children: [
                Image.asset(
                  infor.iconUrl,
                  width: 35,
                  height: 35,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        infor.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(infor.key),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 5),
            child: Text(infor.description),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 13, right: 5),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal, // Enable horizontal scrolling
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: infor.stats.map((stat) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          stat.name,
                          style: const TextStyle(
                              fontSize: 16, color: Colors.amber),
                        ),
                        Text(
                          stat.value,
                          style:
                              const TextStyle(fontSize: 13, color: Colors.red),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Container(
            height: 3,
            alignment: Alignment.center,
            decoration:
                BoxDecoration(color: Theme.of(context).colorScheme.secondary),
          )
        ],
      ),
    );
  }
}
