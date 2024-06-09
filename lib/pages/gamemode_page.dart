import 'package:flutter/material.dart';
import 'package:herometrics/pages/home.dart';
import 'package:herometrics/pages/map_page.dart';
import 'package:herometrics/pages/search.dart';

class GamemodePage extends StatefulWidget {
  const GamemodePage({super.key});

  @override
  State<GamemodePage> createState() => _GamemodePageState();
}

class _GamemodePageState extends State<GamemodePage> {
  int category = 0;

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
              onTap: () {},
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
              onTap: () {},
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
            ),
          ),
        ],
      ),
    );
  }
}
