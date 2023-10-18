import 'package:flutter/material.dart';
import 'home.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/shop': (context) => ShopPage(),
        '/home': (context) =>
            HomePage() // Replace ShopPage with your shop page widget
      },
      title: 'MagisGO',
      home: ShopPage(),
    );
  }
}

class ShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset('assets/home.png', width: 27, height: 27),
              label: '___', // Replace 'assets/home.png' with your image path
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/shop.png', width: 24, height: 24),
              label: '___', // Replace 'assets/search.png' with your image path
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/plus.png', width: 24, height: 24),
              label:
                  'cart', // Replace 'assets/favorite.png' with your image path
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
          // Other BottomNavigationBar properties
          selectedLabelStyle:
              TextStyle(color: Colors.black), // Set the selected label color
          unselectedLabelStyle:
              TextStyle(color: Colors.black), // Set the unselected label color
          onTap: (int index) {
            if (index == 0) {
              // Check if the "Shop" item is pressed (index 1)
              Navigator.of(context).pushNamed(
                  '/home'); // Replace '/shop' with the correct route for shop.dart
            }
            if (index == 1) {
              // Check if the "Shop" item is pressed (index 1)
              Navigator.of(context).pushNamed(
                  '/shop'); // Replace '/shop' with the correct route for shop.dart
            }
            if (index == 3) {
              // Check if the "Shop" item is pressed (index 1)
              Navigator.of(context).pushNamed(
                  '/fav'); // Replace '/shop' with the correct route for shop.dart
            }
            if (index == 4) {
              // Check if the "Shop" item is pressed (index 1)
              Navigator.of(context).pushNamed(
                  '/prof'); // Replace '/shop' with the correct route for shop.dart
            }
          }),
    );
  }
}
