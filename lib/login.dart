import 'package:flutter/material.dart';
import 'package:helloworld/forgor.dart';
import 'register.dart';
import 'bot.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:helloworld/Authenthication/Authent.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:helloworld/Authenthication/toast.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Fluttertoast.showToast(msg: "Fluttertoast initialized");
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<LoginPage> {
  final Authentication _auth = Authentication();

  bool _isSigning = false;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 20),
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
            const SizedBox(height: 20),
            const Column(
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
            const SizedBox(height: 43),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13.0),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              controller: _passwordController,
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
            const SizedBox(height: 10),
            Row(
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgotPage()),
                    );
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: const Color(0xFFF24F04),
                  ),
                  child: const Text('Forgot Password?'),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  _login();
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: const Color(0xFFF24F04),
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Center(
                    child: _isSigning
                        ? CircularProgressIndicator(color: Colors.white)
                        : Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("Don't have an account?"),
                    TextButton(
                      style:
                          TextButton.styleFrom(foregroundColor: const Color(0x85F24F04)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterPage(),
                          ),
                        );
                      },
                      child: const Text("Sign Up"),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 1,
                    color: const Color(0x85000000),
                  ),
                ),
                const Text(' Or With ',
                    style: TextStyle(
                        backgroundColor: Colors.white,
                        color: Color(0x85000000))),
                Expanded(
                  child: Container(
                    height: 1,
                    color: const Color(0x85000000),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Center(
              child: OutlinedButton(
                onPressed: () {
                  // Handle "Sign up with Google" button press
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0x850B0B0B)),
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/G.png', // Replace with your actual image asset path
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              right: 16), // Adjust the margin as needed
                          child: const Text(
                            'Sign in with Google',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0x850B0B0B),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: OutlinedButton(
                onPressed: () {
                  // Handle "Sign up with Google" button press
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0x850B0B0B)),
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/FB.jpg', // Replace with your actual image asset path
                        ),
                        const Text(
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
            const SizedBox(height: 10),
            Center(
              child: OutlinedButton(
                onPressed: () {
                  // Handle "Sign up with Google" button press
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0x850B0B0B)),
                ),
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                  width: double.infinity,
                  height: 50,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/x.jpg', // Replace with your actual image asset path
                          height: 40,
                          width: 40,
                        ),
                        const Text(
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

  void _login() async {
    setState(() {
      _isSigning = true;
    });

    String email = _emailController.text;
    String pass = _passwordController.text;

    // Basic validation
    if (email.isEmpty || pass.isEmpty) {
      Fluttertoast.showToast(
        msg: "Please fill in all fields",
        backgroundColor: const Color(0xFFF24F04),
        textColor: Colors.white,
      );
      setState(() {
        _isSigning = false;
      });
      return;
    }

    try {
      User? user = await _auth.signIn(email, pass);

      setState(() {
        _isSigning = false;
      });

      if (user != null) {
        print("User successfully Login");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const BottomNav()),
        );
      } else {
        Fluttertoast.showToast(
          msg: "Wrong credentials. Please try again.",
          backgroundColor: const Color(0xFFF24F04),
          textColor: Colors.white,
        );
      }
    } catch (e) {
      Fluttertoast.showToast(
        msg: "An error occurred. Please try again.",
        backgroundColor: const Color(0xFFF24F04),
        textColor: Colors.white,
      );
      setState(() {
        _isSigning = false;
      });
    }
  }
}
