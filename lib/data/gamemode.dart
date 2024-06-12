// ignore: file_names
import 'package:herometrics/models/game_model.dart';
import 'package:herometrics/models/mode_model.dart';

List<GameModel> modes = [
  GameModel(
      name: "Standard play",
      data: [
        ModeModel(
            name: "Control",
            image: "assets/images/gamemodes/Control.png",
            data: "data"),
        ModeModel(
            name: "Escort",
            image: "assets/images/gamemodes/Escort.png",
            data: "data"),
        ModeModel(
            name: "Flashpoint",
            image: "assets/images/gamemodes/Flashpoint.png",
            data: "data"),
        ModeModel(
            name: "Hybird",
            image: "assets/images/gamemodes/Hybird.png",
            data: "data"),
        ModeModel(
            name: "Push",
            image: "assets/images/gamemodes/Push.png",
            data: "data"),
        ModeModel(
            name: "Clash",
            image: "assets/images/gamemodes/Push.png",
            data: "data")
      ],
      expand: false),
  GameModel(
      name: "Arcade game modes",
      data: [
        ModeModel(
            name: "Deathmatch",
            image: "assets/images/gamemodes/Deathmatch.png",
            data: "data"),
        ModeModel(
            name: "Assault's Revenge",
            image: "assets/images/gamemodes/Assault.png",
            data: "data"),
        ModeModel(
            name: "Capture The Flag",
            image: "assets/images/gamemodes/Capture_the_Flag.png",
            data: "data"),
        ModeModel(
            name: "Elimination",
            image: "assets/images/gamemodes/Elimination.png",
            data: "data")
      ],
      expand: false),
  GameModel(
      name: "Seasonal game modes",
      data: [
        ModeModel(
            name: "Lúcioball",
            image: "assets/images/gamemodes/Deathmatch.png",
            data: "data"),
        ModeModel(
            name: "Junkenstein's Revenge",
            image: "assets/images/gamemodes/Assault.png",
            data: "data"),
        ModeModel(
            name: "Mei's Snowball Offensive",
            image: "assets/images/gamemodes/Capture_the_Flag.png",
            data: "data"),
        ModeModel(
            name: "Yeti Hunt",
            image: "assets/images/gamemodes/Elimination.png",
            data: "data"),
        ModeModel(
            name: "Overwatch Uprising",
            image: "assets/images/gamemodes/Assault.png",
            data: "data"),
        ModeModel(
            name: "Overwatch Retribution",
            image: "assets/images/gamemodes/Capture_the_Flag.png",
            data: "data"),
        ModeModel(
            name: "Overwatch Storm Rising",
            image: "assets/images/gamemodes/Elimination.png",
            data: "data"),
      ],
      expand: false),
  GameModel(
      name: "SLimited-time game modes",
      data: [
        ModeModel(
            name: "Starwatch: Galactic Rescue",
            image: "assets/images/gamemodes/Deathmatch.png",
            data: "data"),
        ModeModel(
            name: "Roadhog's Catch-A-Mari",
            image: "assets/images/gamemodes/Assault.png",
            data: "data"),
        ModeModel(
            name: "Battle for Olympus Deathmatch",
            image: "assets/images/gamemodes/Capture_the_Flag.png",
            data: "data"),
        ModeModel(
            name: "Loverwatch: Love Never Dies",
            image: "assets/images/gamemodes/Elimination.png",
            data: "data"),
        ModeModel(
            name: "Mischief and Magic",
            image: "assets/images/gamemodes/Assault.png",
            data: "data"),
        ModeModel(
            name: "Cosmic Crisis",
            image: "assets/images/gamemodes/Capture_the_Flag.png",
            data: "data")
      ],
      expand: false),
  GameModel(
      name: "PvE Missions",
      data: [
        ModeModel(
            name: "Story Missions",
            image: "assets/images/gamemodes/Deathmatch.png",
            data: "data"),
        ModeModel(
            name: "Event Missions",
            image: "assets/images/gamemodes/Assault.png",
            data: "data"),
      ],
      expand: false),
  GameModel(
      name: "Canceled game modes",
      data: [
        ModeModel(
            name: "Hero Missions",
            image: "assets/images/gamemodes/Deathmatch.png",
            data: "data"),
        ModeModel(
            name: "Future Story Missions",
            image: "assets/images/gamemodes/Assault.png",
            data: "data")
      ],
      expand: false)
];
