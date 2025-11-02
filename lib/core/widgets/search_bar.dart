import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/core/themes/theme_extension.dart';

class AppSearchBar extends StatefulWidget {
  const AppSearchBar({
    super.key,
    required this.hintText,
    required this.onDebounced,
    this.debounceDuration = const Duration(milliseconds: 500),
  });

  final String hintText;
  final void Function(String) onDebounced;
  final Duration debounceDuration;

  @override
  State<AppSearchBar> createState() => _AppSearchBarState();
}

class _AppSearchBarState extends State<AppSearchBar> {
  Timer? _debounce;
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _debounce?.cancel();
    _controller.dispose();
    super.dispose();
  }

  void _onChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(widget.debounceDuration, () {
      widget.onDebounced(query);
    });
  }

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
      child: SearchBar(
        controller: _controller,
        onChanged: _onChanged,
        constraints: const BoxConstraints(minHeight: 52.0, maxHeight: 52.0),
        hintText: widget.hintText,
        hintStyle: WidgetStateProperty.all(
          TextStyle(color: appColors.searchBarPlaceholder),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: SvgPicture.asset(
            'assets/icons/search.svg',
            colorFilter: ColorFilter.mode(appColors.icon, BlendMode.srcIn),
            width: 20,
            height: 20,
          ),
        ),
        backgroundColor: WidgetStateProperty.all(appColors.searchBarBackground),
        shadowColor: WidgetStateProperty.all(Colors.transparent),
        elevation: WidgetStateProperty.all(0.0),
      ),
    );
  }
}
