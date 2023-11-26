import 'package:flutter/material.dart';
import 'home.dart';
import 'shop.dart';
import 'fav.dart';
import 'profile.dart';
import 'cart.dart';

class MyApp extends StatelessWidget {
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
    const CartPage(),
    const FavoritePage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
showUnselectedLabels: false,
showSelectedLabels: true,
       selectedItemColor: Color(0xfff24f04),
        unselectedItemColor: Color(0xfff24f04),
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
            icon: Icon(Icons.home),label: '___',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/shop.png', width: 24, height: 24),
            label: '___', // Replace 'assets/search.png' with your image path
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/plus.png', width: 24, height: 24),
            label: 'cart', // Replace 'assets/favorite.png' with your image path
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/fav.png', width: 24, height: 24),
            label: '___', // Replace 'assets/cart.png' with your image path
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/Group.png', width: 24, height: 24),
            label: '___', // Replace 'assets/profile.png' with your image path
          ),
        ],
      ),
      body: pages[currentpage],
    );
  }
}
