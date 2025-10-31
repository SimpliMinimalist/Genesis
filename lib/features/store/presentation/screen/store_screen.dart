import 'package:flutter/material.dart';
import 'package:myapp/core/widgets/search_bar.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            AppSearchBar(),
            SizedBox(height: 16.0),
            Text('Store Screen'),
          ],
        ),
      ),
    );
  }
}
