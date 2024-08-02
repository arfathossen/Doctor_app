import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:online_shopping_app/screens/cart_screen.dart';
import 'package:online_shopping_app/screens/home_screen.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOption = <Widget>[
    const HomeScreen(),
    CartScreen(),
    Container(),
    Container()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _widgetOption.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(0.1))
        ]),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.white,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 300),
              tabBackgroundColor: Colors.redAccent,
              color: Colors.black,
              tabs: const [
                GButton(icon: LineIcons.home, text: 'Home'),
                GButton(icon: LineIcons.shoppingCart, text: 'Cart'),
                GButton(icon: LineIcons.home, text: 'Home'),
                GButton(icon: LineIcons.home, text: 'Home'),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
