import 'package:flutter/material.dart';
import 'package:myapp/core/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            AppSearchBar(hintText: 'Search Orders'),
            SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}
