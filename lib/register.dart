import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:helloworld/Authenthication/Authent.dart';

import 'Seller/bot2.dart';
import 'bot.dart';
import 'login.dart';

void main() async {
  Fluttertoast.showToast(msg: "Fluttertoast initialized");
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isSigningUp = false;
  final Authentication _auth = Authentication();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  String _userType = 'Consumer'; // Default user type

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          color: Colors.white,
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
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back, color: Colors.black),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Create your account',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
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
              const SizedBox(height: 20),
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
              const SizedBox(height: 20),
              TextField(
                controller: _confirmPasswordController,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _phoneController,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly], // Only allows numbers
                decoration: InputDecoration(
                  labelText: 'Mobile Number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              DropdownButtonFormField<String>(
                value: _userType,
                items: ['Consumer', 'Seller'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    _userType = value!;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'User Type',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 50),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    _register();
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                    backgroundColor: const Color(0xFFF24F04),
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: Center(
                      child: _isSigningUp
                          ? const CircularProgressIndicator(color: Colors.white)
                          : const Text(
                              'Register',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                      },
                      child: const Text("Sign In"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 90),
              const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                    // Handle "Terms and Data Policy" button press
                  },
                  child: const Text("Terms and Data Policy"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

void _register() async {
  setState(() {
    _isSigningUp = true;
  });

  String name = _nameController.text;
  String email = _emailController.text;
  String pass = _passwordController.text;
  String confirmPassword = _confirmPasswordController.text;
  String phone = _phoneController.text;

  // Basic validation
  if (name.isEmpty ||
      email.isEmpty ||
      pass.isEmpty ||
      confirmPassword.isEmpty ||
      phone.isEmpty) {
    _showError("Please fill in all fields");
    setState(() {
      _isSigningUp = false;
    });
    return;
  }

  

  if (!isValidEmail(email)) {
    _showError("Please enter a valid email address");
    setState(() {
      _isSigningUp = false;
    });
    return;
  }

  if (pass.length < 8) {
    _showError("Password must be at least 8 characters long");
    setState(() {
      _isSigningUp = false;
    });
    return;
  }

  if (pass != confirmPassword) {
    _showError("Passwords do not match");
    setState(() {
      _isSigningUp = false;
    });
    return;
  }

  try {
    // Create user in Firebase Authentication
    UserCredential userCredential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: pass,
    );

    // Get the user ID
    String userId = userCredential.user!.uid;

    // Create a user document in Firestore with the same ID as the user UID
    await FirebaseFirestore.instance.collection('User').doc(userId).set({
      'Name': name,
      'Email': email,
      'Phone': phone,
      'Type': _userType,
      // Add more fields as needed
    });

    // User successfully registered
     print("User successfully registered");
    _showSuccessMessage("User successfully registered");

    if (_userType == 'Seller') {
      // If the user type is "Seller," navigate to bot2.dart
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const BottomNav2()),
      );
    } else {
      // Otherwise, navigate to bot.dart
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const BottomNav()),
      );
    }
  } on FirebaseAuthException catch (e) {
    if (e.code == 'email-already-in-use') {
      _showError("The account already exists for that email.");
      print("The account already exists for that email.");
    } else {
      _showError("Error occurred during registration: ${e.message}");
      print("Error occurred during registration: ${e.message}");
    }
  } catch (e) {
    _showError("Error occurred during registration: $e");
    print("Error occurred during registration: $e");
  }

  setState(() {
    _isSigningUp = false;
  });

  
}


  void _showError(String message) {
    // Display the error message using a SnackBar
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 3),
      ),
    );
  }

  void _showSuccessMessage(String message) {
    // Display the success message using a SnackBar
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 3),
        backgroundColor: Colors.green,
      ),
    );
  }

  bool isValidEmail(String email) {
    // You can implement a more sophisticated email validation logic here
    return email.contains('@');
  }
}
