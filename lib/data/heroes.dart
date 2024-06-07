import 'package:herometrics/models/hero_model.dart';

List<GameHero> heroes = [
  GameHero(
      name: 'D.Va',
      role: 'Tank',
      image: 'assets/images/portraits/dva.png',
      dataPath: 'lib/data/tanks/dva.json'),
  GameHero(
      name: 'Doomfist',
      role: 'Tank',
      image: 'assets/images/portraits/doomfist.png',
      dataPath: 'lib/data/tanks/doomfist.json'),
  GameHero(
      name: 'Junker Queen',
      role: 'Tank',
      image: 'assets/images/portraits/junkerqueen.png',
      dataPath: 'lib/data/tanks/junkerqueen.json'),
  GameHero(
      name: 'Mauga',
      role: 'Tank',
      image: 'assets/images/portraits/mauga.png',
      dataPath: 'lib/data/tanks/mauga.json'),
  GameHero(
      name: 'Orisa',
      role: 'Tank',
      image: 'assets/images/portraits/orisa.png',
      dataPath: 'lib/data/tanks/orisa.json'),
  GameHero(
      name: 'Ramattra',
      role: 'Tank',
      image: 'assets/images/portraits/ramattra.png',
      dataPath: 'lib/data/tanks/ramattra.json'),
  GameHero(
      name: 'Reinhardt',
      role: 'Tank',
      image: 'assets/images/portraits/reinhardt.png',
      dataPath: 'lib/data/tanks/reinhardt.json'),
  GameHero(
      name: 'RoadHog',
      role: 'Tank',
      image: 'assets/images/portraits/roadhog.png',
      dataPath: 'lib/data/tanks/roadhog.json'),
  GameHero(
      name: 'Sigma',
      role: 'Tank',
      image: 'assets/images/portraits/sigma.png',
      dataPath: 'lib/data/tanks/sigma.json'),
  GameHero(
      name: 'Winston',
      role: 'Tank',
      image: 'assets/images/portraits/winston.png',
      dataPath: 'lib/data/tanks/winston.json'),
  GameHero(
      name: 'Wrecking Ball',
      role: 'Tank',
      image: 'assets/images/portraits/wreckingball.png',
      dataPath: 'lib/data/tanks/wreckingball.json'),
  GameHero(
      name: 'Zarya',
      role: 'Tank',
      image: 'assets/images/portraits/zarya.png',
      dataPath: 'lib/data/tanks/zarya.json'),
  GameHero(
      name: 'Venture',
      role: 'DPS',
      image: 'assets/images/portraits/venture.png',
      dataPath: 'lib/data/dps/venture.json'),
  GameHero(
      name: 'Ashe',
      role: 'DPS',
      image: 'assets/images/portraits/ashe.png',
      dataPath: 'lib/data/dps/ashe.json'),
  GameHero(
      name: 'Bastion',
      role: 'DPS',
      image: 'assets/images/portraits/bastion.png',
      dataPath: 'lib/data/dps/bastion.json'),
  GameHero(
      name: 'Cassidy',
      role: 'DPS',
      image: 'assets/images/portraits/cassidy.png',
      dataPath: 'lib/data/dps/cassidy.json'),
  GameHero(
      name: 'Echo',
      role: 'DPS',
      image: 'assets/images/portraits/echo.png',
      dataPath: 'lib/data/dps/echo.json'),
  GameHero(
      name: 'Genji',
      role: 'DPS',
      image: 'assets/images/portraits/genji.png',
      dataPath: 'lib/data/dps/genji.json'),
  GameHero(
      name: 'Hanzo',
      role: 'DPS',
      image: 'assets/images/portraits/hanzo.png',
      dataPath: 'lib/data/dps/hanzo.json'),
  GameHero(
      name: 'Junkrat',
      role: 'DPS',
      image: 'assets/images/portraits/junkrat.png',
      dataPath: 'lib/data/dps/junkrat.json'),
  GameHero(
      name: 'Mei',
      role: 'DPS',
      image: 'assets/images/portraits/mei.png',
      dataPath: 'lib/data/dps/mei.json'),
  GameHero(
      name: 'Pharah',
      role: 'DPS',
      image: 'assets/images/portraits/pharah.png',
      dataPath: 'lib/data/dps/pharah.json'),
  GameHero(
      name: 'Reaper',
      role: 'DPS',
      image: 'assets/images/portraits/reaper.png',
      dataPath: 'lib/data/dps/reaper.json'),
  GameHero(
      name: 'Sojourn',
      role: 'DPS',
      image: 'assets/images/portraits/sojourn.png',
      dataPath: 'lib/data/dps/sojourn.json'),
  GameHero(
      name: 'Soldier:76',
      role: 'DPS',
      image: 'assets/images/portraits/soldier76.png',
      dataPath: 'lib/data/dps/soldier76.json'),
  GameHero(
      name: 'Sombra',
      role: 'DPS',
      image: 'assets/images/portraits/sombra.png',
      dataPath: 'lib/data/dps/sombra.json'),
  GameHero(
      name: 'Symmetra',
      role: 'DPS',
      image: 'assets/images/portraits/symmetra.png',
      dataPath: 'lib/data/dps/symmetra.json'),
  GameHero(
      name: 'Torbjörn',
      role: 'DPS',
      image: 'assets/images/portraits/torbjörn.png',
      dataPath: 'lib/data/dps/torbjörn.json'),
  GameHero(
      name: 'Tracer',
      role: 'DPS',
      image: 'assets/images/portraits/tracer.png',
      dataPath: 'lib/data/dps/tracer.json'),
  GameHero(
      name: 'Widowmaker',
      role: 'DPS',
      image: 'assets/images/portraits/widowmaker.png',
      dataPath: 'lib/data/dps/widowmaker.json'),
  GameHero(
      name: 'Ana',
      role: 'Support',
      image: 'assets/images/portraits/ana.png',
      dataPath: 'lib/data/supports/ana.json'),
  GameHero(
      name: 'Baptiste',
      role: 'Support',
      image: 'assets/images/portraits/baptiste.png',
      dataPath: 'lib/data/supports/baptiste.json'),
  GameHero(
      name: 'Brigitte',
      role: 'Support',
      image: 'assets/images/portraits/brigitte.png',
      dataPath: 'lib/data/supports/brigitte.json'),
  GameHero(
      name: 'Illari',
      role: 'Support',
      image: 'assets/images/portraits/illari.png',
      dataPath: 'lib/data/supports/illari.json'),
  GameHero(
      name: 'Kiriko',
      role: 'Support',
      image: 'assets/images/portraits/kiriko.png',
      dataPath: 'lib/data/supports/kiriko.json'),
  GameHero(
      name: 'Lifeweaver',
      role: 'Support',
      image: 'assets/images/portraits/lifeweaver.png',
      dataPath: 'lib/data/supports/lifeweaver.json'),
  GameHero(
      name: 'Lúcio',
      role: 'Support',
      image: 'assets/images/portraits/lúcio.png',
      dataPath: 'lib/data/supports/lúcio.json'),
  GameHero(
      name: 'Mercy',
      role: 'Support',
      image: 'assets/images/portraits/mercy.png',
      dataPath: 'lib/data/supports/mercy.json'),
  GameHero(
      name: 'Moira',
      role: 'Support',
      image: 'assets/images/portraits/moira.png',
      dataPath: 'lib/data/supports/moira.json'),
  GameHero(
      name: 'Zenyatta',
      role: 'Support',
      image: 'assets/images/portraits/zenyatta.png',
      dataPath: 'lib/data/supports/zenyatta.json'),
];
