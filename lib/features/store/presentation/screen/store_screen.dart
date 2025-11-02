import 'package:flutter/material.dart';
import 'package:myapp/core/themes/theme_extension.dart';
import 'package:myapp/core/widgets/fab.dart';
import 'package:myapp/core/widgets/search_bar.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            AppSearchBar(
              hintText: 'Search Products',
              onDebounced: (query) {},
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: PillFab(
        onPressed: () {
          // Handle cart action
        },
        icon: const Icon(Icons.add),
        backgroundColor: appColors.fabBackground,
        foregroundColor: appColors.fabIcon,
      ),
    );
  }
}
