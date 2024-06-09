import 'package:flutter/material.dart';
import 'package:herometrics/components/card/heroNameCard.dart';
import 'package:herometrics/data/heroes.dart';
import 'package:herometrics/pages/gamemode_page.dart';
import 'package:herometrics/pages/heroDetail.dart';
import 'package:herometrics/pages/map_page.dart';
import 'package:herometrics/pages/patchnote.dart';
import 'package:herometrics/pages/player_stats.dart';
import 'package:herometrics/pages/search.dart';
import 'package:herometrics/models/hero_model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int category = 0;
  var categories = ['All Roles', 'Tank', 'DPS', 'Support'];
  List<GameHero> agent = heroes;

  @override
  void initState() {
    super.initState();
    agent.sort((a, b) => a.name.compareTo(b.name));
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
        setState(() {
          agent = heroes;
          agent.sort((a, b) => a.name.compareTo(b.name));
        });
        break;
      case 'Tank':
        setState(() {
          agent = heroes.where((hero) => hero.role == 'Tank').toList();
          agent.sort((a, b) => a.name.compareTo(b.name));
        });

        break;
      case 'DPS':
        setState(() {
          agent = heroes.where((hero) => hero.role == 'DPS').toList();
          agent.sort((a, b) => a.name.compareTo(b.name));
        });
        break;
      case 'Support':
        setState(() {
          agent = heroes.where((hero) => hero.role == 'Support').toList();
          agent.sort((a, b) => a.name.compareTo(b.name));
        });
        break;
      default:
        setState(() {
          agent = heroes;
          agent.sort((a, b) => a.name.compareTo(b.name));
        });
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
        title: const Text("Heroes"),
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
              onTap: () {},
            ),
            ListTile(
              title: const Row(
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
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GamemodePage()));
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlayerStats(),
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
                        updateAgent(categories[index]);
                        ;
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
          Expanded(
            child: CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(
                  child: SizedBox(height: 15), // Adds the space at the top
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final hero = agent[index];
                      return Heronamecard(
                        avatar: hero.image,
                        name: hero.name,
                        role: hero.role,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Herodetail(
                                        dataPath: hero.dataPath,
                                      )));
                        },
                      );
                    },
                    childCount: agent.length,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

void main() {
  heroes.sort((a, b) => a.name.compareTo(b.name));
  runApp(MaterialApp(
    home: Home(),
  ));
}
