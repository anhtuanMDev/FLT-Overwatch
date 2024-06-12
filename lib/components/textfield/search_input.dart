import 'package:flutter/material.dart';
import 'package:herometrics/data/heroes.dart'; // Assuming this is where the heroes list is defined
import 'package:herometrics/models/hero_search.dart';
import 'package:herometrics/pages/heroDetail.dart';

class SearchInput extends StatefulWidget {
  final double height;
  final double width;
  const SearchInput({Key? key, required this.height, required this.width})
      : super(key: key);

  static List<HeroSearch> champ = heroes.map((hero) {
    return HeroSearch(
        name: hero.name, portrait: hero.image, path: hero.dataPath);
  }).toList();

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  List<HeroSearch> getHeroes() {
    return SearchInput.champ;
  }

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height - 100;

    return Container(
      width: widget.width,
      height: widget.height,
      child: Autocomplete<HeroSearch>(
        optionsBuilder: (TextEditingValue textEditingValue) {
          if (textEditingValue.text.isEmpty) {
            return const Iterable<HeroSearch>.empty();
          }
          return getHeroes().where((HeroSearch hero) => hero.name
              .toLowerCase()
              .contains(textEditingValue.text.toLowerCase()));
        },
        displayStringForOption: (HeroSearch option) => option.name,
        onSelected: (HeroSearch selection) {
          debugPrint('You just selected ${selection.name}');
        },
        optionsViewBuilder: (BuildContext context,
            AutocompleteOnSelected<HeroSearch> onSelected,
            Iterable<HeroSearch> options) {
          final int optionCount = options.length;
          final double maxHeight = optionCount * 78.0;

          return Align(
            alignment: Alignment.topLeft,
            child: Material(
              elevation: 4.0,
              child: Container(
                constraints: BoxConstraints(
                  maxHeight:
                      maxHeight < deviceHeight ? maxHeight : deviceHeight,
                ),
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: options.length,
                  itemBuilder: (BuildContext context, int index) {
                    final HeroSearch hero = options.elementAt(index);
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Image.asset(
                          hero.portrait,
                          width: 70,
                          height: 70,
                        ),
                        title: Text(hero.name),
                        onTap: () {
                          onSelected(hero);
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return Herodetail(dataPath: hero.path);
                            },
                          ));
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        },
        fieldViewBuilder: (BuildContext context,
            TextEditingController controller,
            FocusNode focusNode,
            VoidCallback onFieldSubmitted) {
          return Row(
            children: [
              Expanded(
                child: TextField(
                  controller: controller,
                  focusNode: focusNode,
                  onSubmitted: (String value) {
                    onFieldSubmitted();
                  },
                ),
              ),
              IconButton(
                onPressed: () {
                  controller.clear();
                },
                icon: Icon(Icons.close),
              ),
            ],
          );
        },
      ),
    );
  }
}
