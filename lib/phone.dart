import 'package:flutter/material.dart';
import 'forgor2.dart';
import 'new.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forgot Password Email OTP',
      home: PhonePage(),
    );
  }
}

class PhonePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double fem = 1.0; // You may adjust the multiplier as needed
    double ffem = 1.0; // You may adjust the multiplier as needed

    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(13 * fem, 73 * fem, 14 * fem, 63 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(7 * fem, 0, 0, 37 * fem),
              width: 20 * fem,
              height: 20 * fem,
              child: TextButton(
                onPressed: () {
                  // Navigate back to login.dart
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Forgot2Page()),
                  );
                },
                child: Icon(Icons.arrow_back, color: Colors.black),
              ),
            ),
            Container(
              width: double.infinity,
              height: 645 * fem,
              child: Stack(
                children: [
                  Positioned(
                    left: 0 * fem,
                    top: 0 * fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          8 * fem, 2 * fem, 8 * fem, 43 * fem),
                      width: 320 * fem,
                      height: 265 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 110 * fem,
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 101 * fem,
                                    top: 68 * fem,
                                    child: Container(
                                      width: 103 * fem,
                                      height: 42 * fem,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'MAGIS',
                                            style: TextStyle(
                                              fontSize: 18 * ffem,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                          Text(
                                            'GO',
                                            style: TextStyle(
                                              fontSize: 28 * ffem,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 20 * fem,
                                    top: 0 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 304 * fem,
                                        height: 110 * fem,
                                        child: Image.asset(
                                          'assets/Red.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            child: Center(
                              child: Text(
                                'OTP',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Center(
                              child: Text(
                                'Enter the One Time Password sent to +639*********5',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0x7f000000),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0 * fem,
                    top: 254 * fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          10 * fem, 35 * fem, 7 * fem, 99 * fem),
                      width: 363 * fem,
                      height: 391 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                4 * fem, 0, 7 * fem, 32 * fem),
                            width: double.infinity,
                            height: 50 * fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.fromLTRB(0, 0, 12 * fem, 0),
                                  width: 46 * fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xfff24f04)),
                                    borderRadius:
                                        BorderRadius.circular(8 * fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '0',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20 * ffem,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.fromLTRB(0, 0, 12 * fem, 0),
                                  width: 46 * fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xfff24f04)),
                                    borderRadius:
                                        BorderRadius.circular(8 * fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '0',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20 * ffem,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.fromLTRB(0, 0, 12 * fem, 0),
                                  width: 46 * fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xfff24f04)),
                                    borderRadius:
                                        BorderRadius.circular(8 * fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '0',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20 * ffem,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.fromLTRB(0, 0, 11 * fem, 0),
                                  width: 46 * fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xfff24f04)),
                                    borderRadius:
                                        BorderRadius.circular(8 * fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '0',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20 * ffem,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.fromLTRB(0, 0, 12 * fem, 0),
                                  width: 46 * fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xfff24f04)),
                                    borderRadius:
                                        BorderRadius.circular(8 * fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '0',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20 * ffem,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 46 * fem,
                                  height: 50 * fem,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(8 * fem),
                                    border:
                                        Border.all(color: Color(0x19000000)),
                                    color: Color(0x33d9d9d9),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.fromLTRB(0, 0, 3 * fem, 102 * fem),
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff80807f),
                                ),
                                children: [
                                  TextSpan(text: 'Didn’t receive code? '),
                                  TextSpan(
                                    text: 'Resend',
                                    style: TextStyle(
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w600,
                                      decoration: TextDecoration.underline,
                                      color: Color(0xfff24f04),
                                      decorationColor: Color(0xfff24f04),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NewPage()),
                                );
                                // Handle "Login" button press
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      13), // Adjust the radius as needed
                                ),
                                primary: Color(
                                    0xFFF24F04), // Set the background color here
                              ),
                              child: Container(
                                width: double.infinity,
                                height: 40, // Make the button wide
                                child: Center(
                                  child: Text(
                                    'Verify',
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
