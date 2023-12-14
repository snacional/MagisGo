import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'new.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Forgot Password Phone OTP',
      home: PhonePage(),
    );
  }
}

class PhonePage extends StatelessWidget {
  const PhonePage({super.key});

  @override
  Widget build(BuildContext context) {
    double fem = 1.0; // You may adjust the multiplier as needed
    double ffem = 1.0; // You may adjust the multiplier as needed

    // Create FocusNodes for each TextFormField
    List<FocusNode> focusNodes = List.generate(6, (index) => FocusNode());

    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(20 * fem, 70, 20, 20),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            const SizedBox(height: 30),
            Image.asset(
              'assets/MagisGo.png',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 30),
            Text(
              'OTP',
              style: TextStyle(
                fontSize: 20 * ffem,
                fontWeight: FontWeight.w700,
                color: const Color(0xff000000),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Enter the One Time Password sent to',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0x7f000000),
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              '+639*********5',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0x7f000000),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(6, (index) {
                return Container(
                  margin: EdgeInsets.only(right: 12 * fem),
                  width: 46 * fem,
                  height: 50 * fem,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xfff24f04)),
                    borderRadius: BorderRadius.circular(8 * fem),
                  ),
                  child: Center(
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff000000),
                      ),
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      decoration: const InputDecoration(
                        counterText: '',
                        border: InputBorder.none,
                      ),
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a number';
                        }
                        return null;
                      },
                      // Set the focus to the next TextFormField when a number is entered
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          if (index < focusNodes.length - 1) {
                            FocusScope.of(context).requestFocus(focusNodes[index + 1]);
                          }
                        }
                      },
                      // Attach a FocusNode to the TextFormField
                      focusNode: focusNodes[index],
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Did not receive the code?',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xfff80807f)),
                ),
                TextButton(
                  onPressed: () {
                    // Handle resend action
                  },
                  child: const Text(
                    'Resend',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline,
                      color: Color(0xfff24f04),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 100),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
                backgroundColor: const Color(0xFFF24F04),
              ),
              child: const SizedBox(
                width: double.infinity,
                height: 40,
                child: Center(
                  child: Text(
                    'Verify',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
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
