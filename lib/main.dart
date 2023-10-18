import 'package:flutter/material.dart';
import 'start.dart'; // Import your start page

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}); // Use Key? for nullable key

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MagisGO',
      home: MyLandingPage(),
    );
  }
}

class MyLandingPage extends StatefulWidget {
  @override
  _MyLandingPageState createState() => _MyLandingPageState();
}

class _MyLandingPageState extends State<MyLandingPage> {
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          LandingPageContent(pageController: _pageController),
          StartPage(), // Add the StartPage widget here
        ],
      ),
    );
  }
}

class LandingPageContent extends GestureDetector {
  final PageController pageController;

  LandingPageContent({
    Key? key, // Use Key? for nullable key
    required this.pageController, // Use required to indicate non-nullable parameter
  }) : super(
          key: key,
          onHorizontalDragEnd: (details) {
            if (details.primaryVelocity! > 0) {
              // Add a null check using '!'
              // Swipe to the right, navigate to the start page with a slide animation
              pageController.animateToPage(
                1,
                duration: Duration(milliseconds: 500),
                curve: Curves.ease,
              );
            }
          },
          child: Container(
            color: Color(0xFFF24F04),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/logos.png'), // Your logo image
                ],
              ),
            ),
          ),
        );
}
