import 'package:flutter/material.dart';
import 'package:helloworld/forgor.dart';
import 'register.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MagisGO',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20),
            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                    onPressed: () {
                      // Navigate back to the previous page
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back, color: Colors.black),
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Sign in to your account',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(height: 43),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13.0),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13.0),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              obscureText: true,
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgotPage()),
                    );
                  },
                  child: Text('Forgot Password?'),
                  style: TextButton.styleFrom(
                    primary: Color(0xFFF24F04),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  primary: Color(0xFFF24F04),
                ),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Don't have an account?"),
                    TextButton(
                      child: Text("Sign Up"),
                      style: TextButton.styleFrom(primary: Color(0x85F24F04)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterPage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 1,
                    color: Color(0x85000000),
                  ),
                ),
                Text(' Or With ',
                    style: TextStyle(
                        backgroundColor: Colors.white,
                        color: Color(0x85000000))),
                Expanded(
                  child: Container(
                    height: 1,
                    color: Color(0x85000000),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            OutlinedButton(
              onPressed: () {
                // Handle "Sign up with Google" button press
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Color(0x850B0B0B)),
              ),
              child: Center(
                // Wrapping with Center
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: Center(
                    // Center the Row horizontally and vertically
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // Center horizontally
                      children: [
                        Image.asset(
                          'assets/G.png', // Replace with your actual image asset path
                        ),
                        Text(
                          'Sign in with Google',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0x850B0B0B),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                // Handle "Sign up with Google" button press
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Color(0x850B0B0B)),
              ),
              child: Center(
                // Wrapping with Center
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: Center(
                    // Center the Row horizontally and vertically
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // Center horizontally
                      children: [
                        Image.asset(
                          'assets/FB.jpg', // Replace with your actual image asset path
                        ),
                        Text(
                          'Sign in with Facebook',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0x850B0B0B),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                // Handle "Sign up with Google" button press
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Color(0x850B0B0B)),
              ),
              child: Center(
                // Wrapping with Center
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: Center(
                    // Center the Row horizontally and vertically
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // Center horizontally
                      children: [
                        Image.asset(
                          'assets/x.jpg',
                          height: 40,
                          width:
                              40, // Replace with your actual image asset path
                        ),
                        Text(
                          'Sign in with Twitter',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0x850B0B0B),
                          ),
                        ),
                      ],
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
