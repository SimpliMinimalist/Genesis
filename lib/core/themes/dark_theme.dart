import 'package:flutter/material.dart';
import 'package:myapp/core/themes/colors.dart';
import 'package:myapp/core/themes/theme_extension.dart';

ThemeData darkTheme() {
  return ThemeData(
    colorScheme: const ColorScheme.dark(
      primary: primaryDark,
      surface: backgroundDark,
      onSurface: textDark,
    ),
    extensions: const <ThemeExtension<dynamic>>[
      AppColors(
        primary: primaryDark,
        background: backgroundDark,
        surface: surfaceDark,
        text: textDark,
        textGrey: textDarkGrey,
        topAppBar: topAppBarDark,
        navBarBackground: navBarBackgroundDark,
        iconContainer: iconContainerDark,
        activeIcon: activeIconDark,
        activeLabel: activeLabelDark,
        inactiveTabs: inactiveTabsDark,
        searchBarBackground: searchBarBackgroundDark,
        searchBarPlaceholder: searchBarPlaceholderDark,
        icon: iconDark,
      ),
    ],
  );
}
