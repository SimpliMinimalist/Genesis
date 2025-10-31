
import 'package:flutter/material.dart';
import 'package:myapp/core/themes/theme_extension.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: SearchBar(
        hintText: 'Search Products',
        hintStyle: WidgetStateProperty.all(
          TextStyle(color: appColors.searchBarPlaceholder),
        ),
        leading: Icon(
          Icons.search,
          color: appColors.icon,
        ),
        backgroundColor: WidgetStateProperty.all(appColors.searchBarBackground),
        shadowColor: WidgetStateProperty.all(Colors.transparent),
        elevation: WidgetStateProperty.all(0.0),
      ),
    );
  }
}
