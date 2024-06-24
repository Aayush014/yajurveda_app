import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:yajurveda_app/Screens/Favourite%20&%20Today/fav_today.dart';
import 'package:yajurveda_app/Screens/Settings%20Screen/View/settings_screen.dart';

import '../Screens/Home Screen/View/home_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const FavToday(),
    const FavToday(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(5.0),
        child: GNav(
          activeColor: const Color(0xfffe774a),
          iconSize: 30,
           haptic: false,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          duration: const Duration(milliseconds: 200),
          color: Colors.grey,
          style: GnavStyle.oldSchool,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.favorite,
              text: 'Favorite',
            ),
            GButton(
              icon: Icons.notifications,
              text: 'Today',
            ),
            GButton(
              icon: Icons.settings,
              text: 'Settings',
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(
              () {
                _selectedIndex = index;
              },
            );
          },
        ),
      ),
    );
  }
}
