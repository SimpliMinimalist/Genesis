import 'package:flutter/material.dart';

/// A custom pill-shaped Floating Action Button (FAB) that provides a modern,
/// extended look with a centered icon.
class PillFab extends StatelessWidget {
  const PillFab({
    super.key,
    required this.onPressed,
    required this.icon,
    this.backgroundColor,
    this.foregroundColor,
  });

  final VoidCallback onPressed;
  final Widget icon;
  final Color? backgroundColor;
  final Color? foregroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 47.0,
      child: FloatingActionButton.extended(
        onPressed: onPressed,
        label: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 11.0),
          child: icon,
        ), // Use the icon as the label to center it
        icon: null, // No separate icon to ensure centering
        shape: const StadiumBorder(), // Creates the pill shape
        elevation: 4.0,
        backgroundColor: backgroundColor ?? Colors.white,
        foregroundColor: foregroundColor ?? Colors.black,
        hoverElevation: 6.0,
        highlightElevation: 8.0,
      ),
    );
  }
}
