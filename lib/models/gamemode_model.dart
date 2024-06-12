import 'package:herometrics/models/mode_model.dart';

class GamemodeModel {
  final String name;
  final List<ModeModel> data;
  bool expand;

  GamemodeModel({required this.name, required this.data, required this.expand});
}
