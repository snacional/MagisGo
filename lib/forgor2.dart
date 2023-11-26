import 'package:flutter/material.dart';
import 'gmail.dart';
import 'forgor.dart';
import 'phone.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forgot Password Page',
      home: Forgot2Page(),
    );
  }
}

class Forgot2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double fem = 1.0; // You may adjust the multiplier as needed
    double ffem = 1.0; // You may adjust the multiplier as needed

    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(21 * fem, 73 * fem, 18 * fem, 48 * fem),
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
                    MaterialPageRoute(builder: (context) => ForgotPage()),
                  );
                },
                child: Icon(Icons.arrow_back, color: Colors.black),
              ),
            ),
            Container(
              width: double.infinity,
              height: 666 * fem,
              child: Center(
                // Center the Stack
                child: Stack(
                  children: [
                    Positioned(
                      left: 24 * fem,
                      top: 0 * fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                          52.5 * fem,
                          22 * fem,
                          53.5 * fem,
                          31 * fem,
                        ),
                        width: 320 * fem,
                        height: 252 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin:
                                  EdgeInsets.fromLTRB(1 * fem, 0, 0, 30 * fem),
                              width: 90 * fem,
                              height: 90 * fem,
                              child: Image.asset(
                                'assets/Padlock.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 13 * fem),
                              child: Text(
                                'Make A Selection',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              constraints: BoxConstraints(maxWidth: 214 * fem),
                              child: Text(
                                'Which contact detail should we use to reset your password?',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0x7f000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20 * fem,
                      top: 240 * fem,
                      child: Column(
                        mainAxisSize: MainAxisSize
                            .min, // Make the Column size as small as possible
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PhonePage()),
                              );
                              // Handle the onTap action for "Phone" here
                              // You can navigate to a new page or perform any other action.
                            },
                            child: Container(
                              padding: EdgeInsets.fromLTRB(
                                  14 * fem, 22 * fem, 14 * fem, 33 * fem),
                              width: 351 * fem,
                              height: 220 * fem,
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(0, 0, 0, 25 * fem),
                                    padding: EdgeInsets.fromLTRB(
                                        0, 17 * fem, 67 * fem, 16 * fem),
                                    width: double.infinity,
                                    height: 123 * fem,
                                    decoration: BoxDecoration(
                                      color: Color(0x20D9D9D9),
                                      borderRadius:
                                          BorderRadius.circular(13 * fem),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              0, 0, 5 * fem, 0),
                                          width: 90 * fem,
                                          height: 90 * fem,
                                          child: Image.asset(
                                            'assets/iPhone.png',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              0, 12 * fem, 0, 15 * fem),
                                          width: 161 * fem,
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    9 * fem, 0, 0, 15 * fem),
                                                child: Text(
                                                  'Via SMS:',
                                                  style: TextStyle(
                                                    fontSize: 12 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0x7f000000),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: double.infinity,
                                                child: Text(
                                                  '+69**********',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 20 * ffem,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GmailPage()),
                              );
                              // Handle the onTap action for "Email" here
                              // You can navigate to a new page or perform any other action.
                            },
                            child: Container(
                              padding: EdgeInsets.fromLTRB(
                                  14 * fem, 22 * fem, 14 * fem, 33 * fem),
                              width: 351 * fem,
                              height: 200 * fem,
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0, 0, 0, 0), // Remove the bottom margin
                                    padding: EdgeInsets.fromLTRB(
                                        0, 17 * fem, 67 * fem, 16 * fem),
                                    width: double.infinity,
                                    height: 123 * fem,
                                    decoration: BoxDecoration(
                                      color: Color(0x20D9D9D9),
                                      borderRadius:
                                          BorderRadius.circular(13 * fem),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              0, 0, 5 * fem, 0),
                                          width: 90 * fem,
                                          height: 90 * fem,
                                          child: Image.asset(
                                            'assets/Email.png',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              0, 12 * fem, 0, 15 * fem),
                                          width: 161 * fem,
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    9 * fem, 0, 0, 15 * fem),
                                                child: Text(
                                                  'Via Email:',
                                                  style: TextStyle(
                                                    fontSize: 12 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0x7f000000),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: double.infinity,
                                                child: Text(
                                                  '********@*****.com',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 15 * ffem,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
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
            ),
          ],
        ),
      ),
    );
  }
}
