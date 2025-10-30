import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/core/themes/colors.dart';
import 'package:myapp/features/home/presentation/screen/home_screen.dart';
import 'package:myapp/features/profile/presentation/screen/profile_screen.dart';
import 'package:myapp/features/store/presentation/screen/store_screen.dart';

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

  Widget _buildIcon(String assetPath, bool isSelected) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        isSelected ? activeIconLight : inactiveTabsLight,
        BlendMode.srcIn,
      ),
      child: SvgPicture.asset(assetPath, width: 24, height: 24),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundLight,
      appBar: AppBar(
        backgroundColor: topAppBarLight,
        title: Text(_navItems[_selectedIndex].appBarTitle),
        centerTitle: true,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _navItems.map((item) => item.screen).toList(),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: navBarBackgroundLight,
        onDestinationSelected: _onItemTapped,
        selectedIndex: _selectedIndex,
        indicatorColor: iconContainerLight,
        labelTextStyle: WidgetStateProperty.resolveWith<TextStyle?>(
          (Set<WidgetState> states) {
            return TextStyle(
              color: states.contains(WidgetState.selected) ? activeLabelLight : inactiveTabsLight,
            );
          },
        ),
        destinations: _navItems.map((item) {
          return NavigationDestination(
            icon: _buildIcon(item.initialIcon, false),
            selectedIcon: _buildIcon(item.selectedIcon, true),
            label: item.label,
          );
        }).toList(),
      ),
    );
  }
}
