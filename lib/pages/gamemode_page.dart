import 'package:flutter/material.dart';
import 'package:herometrics/components/card/gamemode_dropdown.dart';
import 'package:herometrics/data/gameModeData.dart';
import 'package:herometrics/models/gamemode_model.dart';
import 'package:herometrics/models/mode_model.dart';
import 'package:herometrics/pages/home.dart';
import 'package:herometrics/pages/map_page.dart';
import 'package:herometrics/pages/patchnote.dart';
import 'package:herometrics/pages/player_stats.dart';
import 'package:herometrics/pages/replay_page.dart';
import 'package:herometrics/pages/search.dart';

class GamemodePage extends StatefulWidget {
  const GamemodePage({super.key});

  @override
  State<GamemodePage> createState() => _GamemodePageState();
}

class _GamemodePageState extends State<GamemodePage> {
  int category = 0;
  Map<String, GamemodeModel?> selectedGameModes = {};

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
        title: const Text("Game Mode"),
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
                    padding: EdgeInsets.only(right: 8.0),
                    child: Image.asset(
                      'assets/icons/rein.png',
                      height: 25,
                      width: 25,
                    ),
                  ),
                  Text('Heroes'),
                ],
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ));
              },
            ),
            ListTile(
              title: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.autofps_select),
                  ),
                  Text('Map'),
                ],
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MapPage()));
              },
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
              onTap: () {},
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            ExpansionPanelList(
              expansionCallback: (panelIndex, isExpanded) {
                setState(() {
                  modes[panelIndex].expand = isExpanded;
                });
              },
              children: modes.map<ExpansionPanel>((GamemodeModel item) {
                return ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return ListTile(
                      title: Text(item.name),
                    );
                  },
                  body: Column(
                    children: item.data.map((ModeModel data) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 15, top: 10, bottom: 10),
                        child: Row(
                          children: [
                            Image.asset(
                              data.image,
                              width: 30,
                              height: 30,
                            ),
                            SizedBox(width: 15),
                            Text(data.name),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                  isExpanded: item.expand,
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
