import 'package:flutter/material.dart';
import 'verify.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

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
            const SizedBox(height: 50),
            Center(
              child: Image.asset(
                'assets/Edit.png', // Make sure the path is correct
              ),
            ),
            const SizedBox(height: 40),
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 14 * fem),
              child: Center(
                child: Text(
                  'New Password',
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
                'Your Account has been verified!\nSet a new password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12 * ffem,
                  fontWeight: FontWeight.w400,
                  color: const Color(0x7f000000),
                ),
              ),
            ),
            const SizedBox(height: 100),
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
            const SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                labelText: 'Re-type Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13.0),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              obscureText: true,
            ),
            const SizedBox(height: 25),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const VerifyPage()),
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
                      'Submit',
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
