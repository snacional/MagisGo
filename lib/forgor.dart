import 'package:flutter/material.dart';
import 'login.dart';
import 'forgor2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MagisGO',
      home: ForgotPage(),
    );
  }
}

class ForgotPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.white, // Set the background color here
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20), // Add spacing
            TextButton(
              onPressed: () {
                // Navigate back to login.dart
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Icon(Icons.arrow_back, color: Colors.black),
            ),
            SizedBox(height: 70),
            Center(
              child: Image.asset('assets/Padlock.png'),
              // Center the image
            ),
            SizedBox(height: 50),
            Center(
              child: Text(
                'FORGET',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),

            Center(
              child: Text(
                'PASSWORD',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: Text(
                'Provide your account’s Email',
                style: TextStyle(
                  color: Color(0x85000000),
                  fontSize: 12,
                ),
              ),
            ),
            SizedBox(height: 5),
            Center(
              child: Text(
                'to reset your password',
                style: TextStyle(
                  color: Color(0x85000000),
                  fontSize: 12,
                ),
              ),
            ),
            SizedBox(height: 100),
            TextField(
              decoration: InputDecoration(
                labelText: 'Your Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      13.0), // Adjust the radius as needed
                ),
                filled: true,
                fillColor: Colors.white, // Background color of the input field
              ),
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Forgot2Page()),
                  );
                  // Handle "Login" button press
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10), // Adjust the radius as needed
                  ),
                  primary: Color(0xFFF24F04), // Set the background color here
                ),
                child: Container(
                  width: double.infinity, // Make the button wide
                  height: 50,
                  child: Center(
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontSize:
                            18, // Increase the font size for the "Login" button
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
