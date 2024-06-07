import 'package:flutter/material.dart';
import 'package:herometrics/pages/home.dart';
import 'package:herometrics/pages/search.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  int category = 0;
  var categories = [
    'All Mode',
    'Control',
    'Escort',
    'Flashpoint',
    'Hybrid',
    'Push'
  ];

  @override
  void initState() {
    super.initState();
  }

  //Change agent in specific role visible on ui
  void changeCategory(int index) {
    setState(() {
      category = index;
    });
  }

  //Change agent visible on ui
  void updateAgent(String role) {
    switch (role) {
      case 'All Roles':
        setState(() {});
        break;
      case 'Tank':
        setState(() {});

        break;
      case 'DPS':
        setState(() {});
        break;
      case 'Support':
        setState(() {});
        break;
      default:
        setState(() {});
        break;
    }
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
    );
  }
}
