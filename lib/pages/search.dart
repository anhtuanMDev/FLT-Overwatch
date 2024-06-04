import 'package:flutter/material.dart';
import 'package:herometrics/components/textfield/search_input.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    double height = AppBar().preferredSize.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => {Navigator.pop(context)},
            icon: const Icon(Icons.arrow_back)),
        actions: [
          SearchInput(
            width: width - 56,
            height: height,
          )
        ],
      ),
    );
  }
}
