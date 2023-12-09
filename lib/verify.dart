import 'package:flutter/material.dart';
import 'login.dart';

class VerifyPage extends StatelessWidget {
  const VerifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    double fem = 1.0; // You may adjust the multiplier as needed
    double ffem = 1.0; // You may adjust the multiplier as needed

    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(20 * fem, 73 * fem, 20 * fem, 24 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                ),
              ],
            ),
            const SizedBox(height: 60),
            Center(
              child: Image.asset(
                'assets/Vector.png', // Make sure the path is correct
              ),
            ),
            const SizedBox(height: 40),
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 14 * fem),
              child: Center(
                child: Text(
                  'Account Verified',
                  style: TextStyle(
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                'You have sucessfully changed\nyour password!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12 * ffem,
                  fontWeight: FontWeight.w400,
                  color: const Color(0x7f000000),
                ),
              ),
            ),
            const SizedBox(height: 225),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                  // Handle "Login" button press
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ), backgroundColor: const Color(0xFFF24F04),
                ),
                child: const SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Center(
                    child: Text(
                      'Back to Login',
                      style: TextStyle(
                        fontSize: 18,
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
