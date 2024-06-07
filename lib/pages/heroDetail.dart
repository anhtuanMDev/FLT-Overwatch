import 'package:flutter/material.dart';
import 'package:herometrics/components/card/ability_card.dart';
import 'package:herometrics/components/card/detail_header.dart';
import 'package:herometrics/components/card/hero_title.dart';
import 'package:herometrics/components/card/stat_row_text.dart';
import 'package:herometrics/models/data_model.dart';

class Herodetail extends StatefulWidget {
  final String dataPath;
  const Herodetail({super.key, required this.dataPath});

  @override
  State<Herodetail> createState() => _HerodetailState();
}

class _HerodetailState extends State<Herodetail> {
  DataModel? dataModel;
  @override
  void initState() {
    super.initState();
    loadData(); // Call a separate method to load async data from json
  }

  Future<void> loadData() async {
    debugPrint(widget.dataPath);
    DataModel data = await DataModel.loadJsonFromAssets(widget.dataPath);

    setState(() {
      dataModel = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text('Hero\'s Informations'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              // Use ConstrainedBox to ensure the ListView has a maximum height
              constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height -
                      100), // Adjust maxHeight as needed
              child: ListView(
                children: [
                  const SizedBox(height: 5),
                  HeroTitle(
                      avatar: dataModel?.image ?? 'assets/icons/Logo.png',
                      name: dataModel?.name ?? 'Hero',
                      role: dataModel?.role ?? 'Role'),
                  const SizedBox(height: 5),
                  Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 15, bottom: 10, left: 10, right: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'Hero Basic Stats',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.primary),
                            ),
                            StatRowText(
                                name: 'Total HP:',
                                value: dataModel?.total ?? "0"),
                            StatRowText(
                                name: 'Normal HP:',
                                value: dataModel?.normal ?? "0"),
                            StatRowText(
                                name: 'Armor HP:',
                                value: dataModel?.armor ?? "0"),
                            StatRowText(
                                name: 'Shield HP:',
                                value: dataModel?.shield ?? "0"),
                          ],
                        ),
                      )),
                  const SizedBox(height: 5),
                  const DetailHeader(title: 'Abilities'),
                  ListView.builder(
                    shrinkWrap:
                        true, // Add shrinkWrap to prevent the builder from trying to expand infinitely
                    physics:
                        const NeverScrollableScrollPhysics(), // Disable scrolling on this ListView since we're wrapping it in a SingleChildScrollView
                    itemCount: dataModel?.abilities.length ?? 0,
                    itemBuilder: (context, index) {
                      return AbilityCard(infor: dataModel!.abilities[index]);
                    },
                  ),
                  const DetailHeader(title: 'Advantage'),
                  const SizedBox(height: 5),
                  const DetailHeader(title: 'Counter'),
                  const SizedBox(height: 5),
                  const DetailHeader(title: 'In Sync'),
                  const SizedBox(height: 5),
                  const DetailHeader(title: 'Favorite Map'),
                ],
              ),
            ),
          ),
        ));
  }
}
