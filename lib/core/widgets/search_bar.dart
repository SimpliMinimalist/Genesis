import 'package:flutter/material.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SearchBar(
      hintText: 'Search...',
      leading: Icon(Icons.search),
    );
  }
}
