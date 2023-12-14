import 'package:flutter/material.dart';

import 'forgor2.dart'; // Assuming the file name is forgot2.dart
import 'login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'MagisGO',
      home: ForgotPage(),
    );
  }
}

class ForgotPage extends StatelessWidget {
  const ForgotPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              child: const Icon(Icons.arrow_back, color: Colors.black),
            ),
            const SizedBox(height: 70),
            Center(
              child: Image.asset('assets/Padlock.png'),
            ),
            const SizedBox(height: 50),
            const Center(
              child: Text(
                'FORGET',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const Center(
              child: Text(
                'PASSWORD',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(height: 40),
            const Center(
              child: Text(
                'Provide your account’s Email',
                style: TextStyle(
                  color: Color(0x85000000),
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Center(
              child: Text(
                'to reset your password',
                style: TextStyle(
                  color: Color(0x85000000),
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(height: 100),
            EmailTextField(),
            const SizedBox(height: 30),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  if (EmailTextField.emailIsValid) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Forgot2Page(
                          selectedEmail: EmailTextField.currentEmail,
                        ),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Invalid or non-existing account'),
                        duration: Duration(seconds: 3),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: const Color(0xFFF24F04),
                ),
                child: const SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Center(
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
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

class EmailTextField extends StatefulWidget {
  static bool emailIsValid = false;
  static String currentEmail = '';

  @override
  _EmailTextFieldState createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _emailController,
      onChanged: (value) {
        setState(() {
          EmailTextField.emailIsValid = isValidEmail(value);
          EmailTextField.currentEmail = value;
        });
      },
      decoration: InputDecoration(
        labelText: 'Your Email',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13.0),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }

  bool isValidEmail(String email) {
    final RegExp emailRegex =
        RegExp(r'^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
    return emailRegex.hasMatch(email);
  }
}
