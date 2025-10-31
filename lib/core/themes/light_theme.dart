import 'package:flutter/material.dart';
import 'package:myapp/core/themes/colors.dart';
import 'package:myapp/core/themes/theme_extension.dart';

ThemeData lightTheme() {
  return ThemeData(
    colorScheme: const ColorScheme.light(
      primary: primaryLight,
      surface: backgroundLight,
      onSurface: textLight,
    ),
    extensions: const <ThemeExtension<dynamic>>[
      AppColors(
        primary: primaryLight,
        background: backgroundLight,
        surface: surfaceLight,
        text: textLight,
        textGrey: textLightGrey,
        topAppBar: topAppBarLight,
        navBarBackground: navBarBackgroundLight,
        iconContainer: iconContainerLight,
        activeIcon: activeIconLight,
        activeLabel: activeLabelLight,
        inactiveTabs: inactiveTabsLight,
        searchBarBackground: searchBarBackgroundLight,
        searchBarPlaceholder: searchBarPlaceholderLight,
        icon: iconLight,
      ),
    ],
  );
}
