import 'package:flutter/material.dart';
import 'package:herometrics/components/card/map_card.dart';
import 'package:herometrics/data/mapData.dart';
import 'package:herometrics/models/map_model.dart';
import 'package:herometrics/pages/gamemode_page.dart';
import 'package:herometrics/pages/home.dart';
import 'package:herometrics/pages/patchnote.dart';
import 'package:herometrics/pages/player_stats.dart';
import 'package:herometrics/pages/replay_page.dart';
import 'package:herometrics/pages/search.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  int category = 0;
  var categories = [
    'All Modes',
    'Control',
    'Escort',
    'Flashpoint',
    'Hybrid',
    'Push'
  ];
  List<MapModel> scene = [];

  //Change maps in specific game mode visible on ui
  void changeCategory(int index) {
    setState(() {
      category = index;
    });
  }

  //Change game mode's map visible on ui
  void updateMode(String mode) {
    setState(() {
      switch (mode) {
        case 'All Modes':
          scene = List.of(maps);
          scene.sort((a, b) => a.name.compareTo(b.name));
          break;
        case 'Control':
          scene = maps.where((a) => a.gameMode == "Control").toList();
          scene.sort((a, b) => a.name.compareTo(b.name));
          break;
        case 'Escort':
          scene = maps.where((a) => a.gameMode == "Escort").toList();
          scene.sort((a, b) => a.name.compareTo(b.name));
          break;
        case 'Hybrid':
          scene = maps.where((a) => a.gameMode == "Hybrid").toList();
          scene.sort((a, b) => a.name.compareTo(b.name));
          break;
        case 'Push':
          scene = maps.where((a) => a.gameMode == "Push").toList();
          scene.sort((a, b) => a.name.compareTo(b.name));
          break;
        default:
          scene = List.of(maps);
          scene.sort((a, b) => a.name.compareTo(b.name));
          break;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      scene = List.from(maps); // Make sure scene is a copy of maps
      scene.sort((a, b) => a.name.compareTo(b.name));
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    // Get device width and height
    double deviceWidth = mediaQuery.size.width;
    double logoSize = deviceWidth * .2;
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.dashboard),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: const Text("Overwatch's Map"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Search()));
            },
            icon: const Icon(Icons.search_sharp),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/icons/Logo.png',
                    width: logoSize,
                    height: logoSize,
                  ),
                  const Text('Hero Metrics'),
                  const Text(
                    'Learn more about your hero',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Image.asset(
                      'assets/icons/rein.png',
                      height: 25,
                      width: 25,
                    ),
                  ),
                  const Text('Heroes'),
                ],
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ));
              },
            ),
            const ListTile(
              title: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.autofps_select),
                  ),
                  Text('Map'),
                ],
              ),
            ),
            ListTile(
              title: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.games_outlined),
                  ),
                  Text('Game Mode'),
                ],
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GamemodePage()));
              },
            ),
            ListTile(
              title: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.balance_outlined),
                  ),
                  Text('Patch note'),
                ],
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Patchnote(),
                    ));
              },
            ),
            ListTile(
              title: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.people),
                  ),
                  Text('Player Stats'),
                ],
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlayerStats(),
                    ));
              },
            ),
            ListTile(
              title: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.camera_outlined),
                  ),
                  Text('Replay'),
                ],
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReplayPage(),
                    ));
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              height: 50, // Set a fixed height for the ListView
              // Create hero's category button
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: categories.length,
                padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: ElevatedButton(
                      onPressed: () {
                        changeCategory(index);
                        updateMode(categories[index]);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: index == category
                            ? Colors.orange.shade700
                            : Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          categories[index],
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: index == category
                                  ? Theme.of(context).colorScheme.inversePrimary
                                  : Theme.of(context).colorScheme.surface),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(scene.length, (index) {
                return MapCard(
                  deviceWidth: deviceWidth,
                  map: scene[index],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
