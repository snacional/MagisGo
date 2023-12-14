import 'package:flutter/material.dart';

import 'forgor.dart';
import 'gmail.dart';
import 'phone.dart';
class Forgot2Page extends StatelessWidget {
  final String selectedEmail;

  const Forgot2Page({Key? key, required this.selectedEmail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fem = 1.0;
    double ffem = 1.0;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(20 * fem, 73 * fem, 20 * fem, 48 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ForgotPage(),
                    ),
                  );
                },
                child: const Icon(Icons.arrow_back, color: Colors.black),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 666 * fem,
              child: Center(
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
                        decoration: const BoxDecoration(
                          color: Color(0xffffffff),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(20, 0, 0, 30 * fem),
                              width: 90 * fem,
                              height: 90 * fem,
                              child: Image.asset(
                                'assets/Padlock.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(20, 0, 0, 13 * fem),
                              child: Text(
                                'Make A Selection',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                              constraints: BoxConstraints(maxWidth: 214 * fem),
                              child: Text(
                                'Which contact detail should we use to reset your password?',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0x7f000000),
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
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PhonePage(),
                                ),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.fromLTRB(
                                  14 * fem, 22 * fem, 14 * fem, 33 * fem),
                              width: 351 * fem,
                              height: 220 * fem,
                              decoration: const BoxDecoration(
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
                                      color: const Color(0x20D9D9D9),
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
                                                    color:
                                                        const Color(0x7f000000),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: double.infinity,
                                                child: Text(
                                                  '+69**********',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 20 * ffem,
                                                    fontWeight: FontWeight.w600,
                                                    color:
                                                        const Color(0xff000000),
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
                                  builder: (context) => GmailPage(
                                    selectedEmail: selectedEmail,
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.fromLTRB(
                                  14 * fem, 22 * fem, 14 * fem, 33 * fem),
                              width: 351 * fem,
                              height: 200 * fem,
                              decoration: const BoxDecoration(
                                color: Color(0xffffffff),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        0, 0, 0, 0),
                                    padding: EdgeInsets.fromLTRB(
                                        0, 17 * fem, 67 * fem, 16 * fem),
                                    width: double.infinity,
                                    height: 123 * fem,
                                    decoration: BoxDecoration(
                                      color: const Color(0x20D9D9D9),
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
                                                    color:
                                                        const Color(0x7f000000),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: double.infinity,
                                                child: Text(
                                                  selectedEmail,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 15 * ffem,
                                                    fontWeight: FontWeight.w600,
                                                    color:
                                                        const Color(0xff000000),
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
