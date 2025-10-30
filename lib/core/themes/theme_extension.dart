
import 'package:flutter/material.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.primary,
    required this.background,
    required this.surface,
    required this.text,
    required this.textGrey,
    required this.topAppBar,
    required this.navBarBackground,
    required this.iconContainer,
    required this.activeIcon,
    required this.activeLabel,
    required this.inactiveTabs,
  });

  final Color primary;
  final Color background;
  final Color surface;
  final Color text;
  final Color textGrey;
  final Color topAppBar;
  final Color navBarBackground;
  final Color iconContainer;
  final Color activeIcon;
  final Color activeLabel;
  final Color inactiveTabs;

  @override
  AppColors copyWith({
    Color? primary,
    Color? background,
    Color? surface,
    Color? text,
    Color? textGrey,
    Color? topAppBar,
    Color? navBarBackground,
    Color? iconContainer,
    Color? activeIcon,
    Color? activeLabel,
    Color? inactiveTabs,
  }) {
    return AppColors(
      primary: primary ?? this.primary,
      background: background ?? this.background,
      surface: surface ?? this.surface,
      text: text ?? this.text,
      textGrey: textGrey ?? this.textGrey,
      topAppBar: topAppBar ?? this.topAppBar,
      navBarBackground: navBarBackground ?? this.navBarBackground,
      iconContainer: iconContainer ?? this.iconContainer,
      activeIcon: activeIcon ?? this.activeIcon,
      activeLabel: activeLabel ?? this.activeLabel,
      inactiveTabs: inactiveTabs ?? this.inactiveTabs,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      primary: Color.lerp(primary, other.primary, t)!,
      background: Color.lerp(background, other.background, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      text: Color.lerp(text, other.text, t)!,
      textGrey: Color.lerp(textGrey, other.textGrey, t)!,
      topAppBar: Color.lerp(topAppBar, other.topAppBar, t)!,
      navBarBackground: Color.lerp(navBarBackground, other.navBarBackground, t)!,
      iconContainer: Color.lerp(iconContainer, other.iconContainer, t)!,
      activeIcon: Color.lerp(activeIcon, other.activeIcon, t)!,
      activeLabel: Color.lerp(activeLabel, other.activeLabel, t)!,
      inactiveTabs: Color.lerp(inactiveTabs, other.inactiveTabs, t)!,
    );
  }
}

