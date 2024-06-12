import 'package:herometrics/models/mode_model.dart';

class GameModel {
  final String name;
  final List<ModeModel> data;
  bool expand;

  GameModel({required this.name, required this.data, required this.expand});
}
