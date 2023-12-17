import 'package:flutter/material.dart';

import 'cart.dart';
import 'fav.dart';
import 'home.dart';
import 'profile.dart';
import 'shop.dart';



class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MagisGO',
      home: BottomNav(),
    );
  }
}

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentpage = 0;

  List pages = [
    const HomePage(),
    const ShopPage(),
     CartPage(), // Pass a valid CartPageArguments
    const FavoritePage(),
    const ProfilePage(),
  ];

  List<String> iconPaths = [
    'assets/home.png',
    'assets/shop.png',
    'assets/plus.png',
    'assets/fav.png',
    'assets/Group.png',
  ];

  List<String> selectedIconPaths = [
    'assets/home_selected.png',
    'assets/shop_selected.png',
    'assets/plus.png',
    'assets/fav_selected.png',
    'assets/Group_selected.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: true,
        selectedItemColor: const Color(0xfff24f04),
        unselectedItemColor: const Color(0xfff24f04),
        iconSize: 30,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        onTap: (index) {
          setState(() {
            currentpage = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              currentpage == 0 ? selectedIconPaths[0] : iconPaths[0],
              width: 44,
              height: 44,
            ),
            label: '___',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              currentpage == 1 ? selectedIconPaths[1] : iconPaths[1],
              width: 44,
              height: 44,
            ),
            label: '___',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xfff24f04),
                  width: 2.0,
                ),
              ),
              child: Center(
                child: Image.asset(
                  currentpage == 2 ? selectedIconPaths[2] : iconPaths[2],
                  width: 44,
                  height: 44,
                ),
              ),
            ),
            label: 'cart',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              currentpage == 3 ? selectedIconPaths[3] : iconPaths[3],
              width: 44,
              height: 44,
            ),
            label: '___',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              currentpage == 4 ? selectedIconPaths[4] : iconPaths[4],
              width: 44,
              height: 44,
            ),
            label: '___',
          ),
        ],
      ),
      body: pages[currentpage],
    );
  }
}
