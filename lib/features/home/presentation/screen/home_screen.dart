import 'package:flutter/material.dart';
import 'package:myapp/core/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            AppSearchBar(
              hintText: 'Search Orders',
              onDebounced: (query) {},
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}
