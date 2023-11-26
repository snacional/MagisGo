import 'package:flutter/material.dart';
import 'register.dart'; // Import your register page
import 'login.dart'; // Import your login page

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MagisGO',
      home: StartPage(),
    );
  }
}

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        // Set the background color here
        child: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.start, // Align content at the top
            children: <Widget>[
              Image.asset('assets/MagisGo.png'), // Your 'MagisGo.png' image
              const SizedBox(height: 60),
              Image.asset('assets/food.png'), // Your food image
              // Adjust spacing
              const SizedBox(height: 40),
              const Text(
                'Find a',
                style: TextStyle(
                  fontSize: 25, // Adjust the font size as needed
                  color: Colors.black,
                  fontWeight: FontWeight.w800, // Text color
                ),
              ),
              const SizedBox(height: 3),
              const Text(
                'Restaurant',
                style: TextStyle(
                  fontSize: 25, // Adjust the font size as needed
                  color: Colors.black,
                  fontWeight: FontWeight.w800, // Text color
                ),
              ),
              const SizedBox(height: 7), // Adjust spacing
              const Text(
                'Fastest Operation to pick',
                style: TextStyle(
                  fontSize: 16, // Adjust the font size as needed
                  color: Color(0x50000000),
                  // Text color with 50% opacity
                ),
              ),
              const SizedBox(height: 3), // Adjust spacing
              const Text(
                'up your food',
                style: TextStyle(
                  fontSize: 16, // Adjust the font size as needed
                  color: Color(0x50000000),
                  // Text color with 50% opacity
                ),
              ),
              Center(
                  child: Text('.',
                      style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFFF24F04)))),
              const SizedBox(height: 40), // Adjust spacing
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                    onPressed: () {
                      // Handle "Get Started" button press
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            13), // Adjust the radius as needed
                      ),
                      primary:
                          Color(0xFFF24F04), // Set the background color here
                    ),
                    child: Container(
                        width: double.infinity,
                        height: 50,
                        child: Center(
                            child: Text('Get Started',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xffffffff),
                                ))))),
              ),
              const SizedBox(height: 10), // Adjust spacing
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                    onPressed: () {
                      // Handle "Sign In" button press
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            13), // Adjust the radius as needed
                      ),
                      backgroundColor:
                          Color(0xFFFD9D9D9), // Set the background color here
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      child: Center(
                        child: Text('Sign In',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFFF24F04), // Text color
                            )),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
