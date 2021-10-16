import 'package:flutter/material.dart';

import 'package:menta/pages.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.5),
        ),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Search for Meditations",
            icon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.search),
            ),
          ),
        ));
  }
}
