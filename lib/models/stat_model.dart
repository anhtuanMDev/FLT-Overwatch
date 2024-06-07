class StatModel {
  final String name;
  final String value;

  StatModel({required this.name, required this.value});

  factory StatModel.fromJson(Map<String, dynamic> json) {
    return StatModel(
      name: json['name'],
      value: json['value'],
    );
  }
}
