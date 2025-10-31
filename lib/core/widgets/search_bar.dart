
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/core/themes/theme_extension.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({super.key, required this.hintText});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SearchBar(
        constraints: const BoxConstraints(minHeight: 52.0, maxHeight: 52.0),
        hintText: hintText,
        hintStyle: WidgetStateProperty.all(
          TextStyle(color: appColors.searchBarPlaceholder),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: SvgPicture.asset(
            'assets/icons/search.svg',
            colorFilter: ColorFilter.mode(appColors.icon, BlendMode.srcIn),
            width: 24,
            height: 24,
          ),
        ),
        backgroundColor: WidgetStateProperty.all(appColors.searchBarBackground),
        shadowColor: WidgetStateProperty.all(Colors.transparent),
        elevation: WidgetStateProperty.all(0.0),
      ),
    );
  }
}
