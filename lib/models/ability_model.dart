import 'package:herometrics/models/stat_model.dart';

class AbilityModel {
  final String name;
  final String iconUrl;
  final String key;
  final String description;
  final List<StatModel> stats;

  AbilityModel({
    required this.name,
    required this.iconUrl,
    required this.key,
    required this.description,
    required this.stats,
  });

  factory AbilityModel.fromJson(Map<String, dynamic> json) {
    var statsList = json['stats'] as List;
    List<StatModel> stats =
        statsList.map((statJson) => StatModel.fromJson(statJson)).toList();

    return AbilityModel(
      name: json['name'],
      iconUrl: json['iconUrl'],
      key: json['key'],
      description: json['description'],
      stats: stats,
    );
  }
}
