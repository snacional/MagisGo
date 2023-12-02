import 'package:flutter/material.dart';
import 'login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'MagisGO',
      home: RegisterPage(),
    );
  }
}

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        color: Colors.white, // Set the background color here

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 20), // Add spacing
            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                    onPressed: () {
                      // Navigate back to the previous page
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back, color: Colors.black),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20), // Add spacing
            const Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5), // Add spacing
            const Text(
              'Create your account',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20), // Add spacing
            TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      13.0), // Adjust the radius as needed
                ),
                filled: true,
                fillColor: Colors.white, // Background color of the input field
              ),
            ),

            const SizedBox(height: 20), // Add spacing
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      13.0), // Adjust the radius as needed
                ),
                filled: true,
                fillColor: Colors.white, // Background color of the input field
              ),
            ),

            const SizedBox(height: 20), // Add spacing
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      13.0), // Adjust the radius as needed
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              obscureText: true, // To hide password input
            ),

            const SizedBox(height: 20), // Add spacing
            TextField(
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      13.0), // Adjust the radius as needed
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              obscureText: true, // To hide password input
            ),

            const SizedBox(height: 20), // Add spacing
            TextField(
              decoration: InputDecoration(
                labelText: 'Mobile Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      13.0), // Adjust the radius as needed
                ),
                filled: true,
                fillColor: Colors.white, // Background color of the input field
              ),
            ),
            const SizedBox(height: 50), // Add spacing
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  // Handle "Login" button press
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        13), // Adjust the radius as needed
                  ), backgroundColor: const Color(0xFFF24F04), // Set the background color here
                ),
                child: const SizedBox(
                  width: double.infinity,
                  height: 40, // Make the button wide
                  child: Center(
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontSize:
                            18, // Increase the font size for the "Login" button
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center align horizontally
                children: <Widget>[
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: Color(0x85000000),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: const Color(0x85f24f04),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                      );
                      // Handle "Sign up" button press
                    },
                    child: const Text("Sign In"),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 90),
            const Center(
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center align horizontally
                children: <Widget>[
                  Text(
                    "By clicking Register, you agree to our",
                    style: TextStyle(
                      color: Color(0x85000000),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: const Color(0x85f24f04),
                ),
                onPressed: () {
                  // Handle "Sign up" button press
                },
                child: const Text("Terms and Data Policy"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
