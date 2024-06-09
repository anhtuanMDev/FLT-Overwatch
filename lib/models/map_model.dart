class MapModel {
  final String name;
  final String gameMode;
  final String? subMap;
  final String image;

  MapModel(
      {required this.name,
      required this.gameMode,
      this.subMap,
      required this.image});
}
