import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/core/services/theme_provider.dart';
import 'package:myapp/core/themes/theme_extension.dart';
import 'package:myapp/features/home/presentation/screen/home_screen.dart';
import 'package:myapp/features/profile/presentation/screen/profile_screen.dart';
import 'package:myapp/features/store/presentation/screen/store_screen.dart';
import 'package:provider/provider.dart';

class NavigationItem {
  final String initialIcon;
  final String selectedIcon;
  final String label;
  final String appBarTitle;
  final Widget screen;

  const NavigationItem({
    required this.initialIcon,
    required this.selectedIcon,
    required this.label,
    required this.appBarTitle,
    required this.screen,
  });
}

class MainShell extends StatefulWidget {
  const MainShell({super.key});

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  int _selectedIndex = 0;

  static const List<NavigationItem> _navItems = [
    NavigationItem(
      initialIcon: 'assets/icons/home.svg',
      selectedIcon: 'assets/icons/homeSelected.svg',
      label: 'Home',
      appBarTitle: 'Orders',
      screen: HomeScreen(),
    ),
    NavigationItem(
      initialIcon: 'assets/icons/store.svg',
      selectedIcon: 'assets/icons/storeSelected.svg',
      label: 'Store',
      appBarTitle: 'Products',
      screen: StoreScreen(),
    ),
    NavigationItem(
      initialIcon: 'assets/icons/profile.svg',
      selectedIcon: 'assets/icons/profileSelected.svg',
      label: 'Profile',
      appBarTitle: 'Profile',
      screen: ProfileScreen(),
    ),
  ];

  void _onItemTapped(int index) {
    if (_selectedIndex != index) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  Widget _buildIcon(BuildContext context, String assetPath, bool isSelected) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        isSelected ? appColors.activeIcon : appColors.inactiveTabs,
        BlendMode.srcIn,
      ),
      child: SvgPicture.asset(assetPath, width: 24, height: 24),
    );
  }

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      backgroundColor: appColors.background,
      appBar: AppBar(
        backgroundColor: appColors.topAppBar,
        title: Text(
          _navItems[_selectedIndex].appBarTitle,
          style: TextStyle(color: appColors.text, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              themeProvider.themeMode == ThemeMode.dark ? Icons.light_mode : Icons.dark_mode,
              color: appColors.text,
            ),
            onPressed: () => themeProvider.toggleTheme(),
            tooltip: 'Toggle Theme',
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _navItems.map((item) => item.screen).toList(),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: appColors.navBarBackground,
        onDestinationSelected: _onItemTapped,
        selectedIndex: _selectedIndex,
        indicatorColor: appColors.iconContainer,
        labelTextStyle: WidgetStateProperty.resolveWith<TextStyle?>(
          (Set<WidgetState> states) {
            final color = states.contains(WidgetState.selected)
                ? appColors.activeLabel
                : appColors.inactiveTabs;
            return TextStyle(color: color, fontWeight: FontWeight.w500);
          },
        ),
        destinations: _navItems.map((item) {
          return NavigationDestination(
            icon: _buildIcon(context, item.initialIcon, false),
            selectedIcon: _buildIcon(context, item.selectedIcon, true),
            label: item.label,
          );
        }).toList(),
      ),
    );
  }
}
