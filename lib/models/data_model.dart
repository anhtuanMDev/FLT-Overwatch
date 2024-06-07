import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:herometrics/models/ability_model.dart';

class DataModel {
  final String name;
  final String role;
  final String image;
  final String speed;
  final String total;
  final String normal;
  final String armor;
  final String shield;
  final List<AbilityModel> abilities;

  DataModel({
    required this.name,
    required this.role,
    required this.image,
    required this.speed,
    required this.total,
    required this.normal,
    required this.armor,
    required this.shield,
    required this.abilities,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) {
    var list = json['abilities'] as List;
    List<AbilityModel> abilitiesList =
        list.map((i) => AbilityModel.fromJson(i)).toList();

    return DataModel(
      name: json['name'],
      role: json['role'],
      image: json['image'],
      speed: json['speed'],
      total: json['total'],
      normal: json['normal'],
      armor: json['armor'],
      shield: json['shield'],
      abilities: abilitiesList,
    );
  }

  static Future<DataModel> loadJsonFromAssets(String filePath) async {
    String jsonString = await rootBundle.loadString(filePath);
    Map<String, dynamic> jsonData = jsonDecode(jsonString);
    return DataModel.fromJson(jsonData);
  }
}
