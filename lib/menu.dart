import 'package:flutter/material.dart';
class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
   double fem = 1.0; // You may adjust the multiplier as needed
    double ffem = 1.0; // You may adjust the multiplier as needed
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:SingleChildScrollView(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
     children: [
    InkWell(
  onTap: () {
    // Add the functionality you want when the image is tapped
  },
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        width: double.infinity,
        height: 101.37 * fem,
        child: Image.asset(
          'assets/bam.png',
        ),
      ),
     ],
    )
      )
    ])));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'MagisGO',
      home: MenuPage(),
    );
  }
}