import 'package:flutter/material.dart';

import 'menu.dart';
import 'order.dart';
import 'seller_profile.dart';

class BottomNav2 extends StatefulWidget {
  const BottomNav2({Key? key}) : super(key: key);

  @override
  BottomNav2State createState() => BottomNav2State();
}

class BottomNav2State extends State<BottomNav2> {
  int currentPage = 0;

  List<Widget> pages = [
    OrderPage(),
    MenuPage(),
    ProfilePage(),
  ];

  List<String> iconPaths = [
    'assets/order_icon.png',
    'assets/menu_icon.png',
    'assets/profile_icon.png',
  ];

  List<String> selectedIconPaths = [
    'assets/order_icon_selected.png',
    'assets/menu_icon_selected.png',
    'assets/profile_icon_selected.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Colors.blue, // Change the color as needed
        unselectedItemColor: Colors.grey,
        iconSize: 30,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              currentPage == 0 ? selectedIconPaths[0] : iconPaths[0],
              width: 44,
              height: 44,
            ),
            label: '', // Set label to empty string
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              currentPage == 1 ? selectedIconPaths[1] : iconPaths[1],
              width: 44,
              height: 44,
            ),
            label: '', // Set label to empty string
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              currentPage == 2 ? selectedIconPaths[2] : iconPaths[2],
              width: 44,
              height: 44,
            ),
            label: '', // Set label to empty string
          ),
        ],
      ),
      body: pages[currentPage],
    );
  }
}
