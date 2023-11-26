import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MagisGO',
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  final fem = 1.0; // You can replace 1.0 with your desired value for fem.
  final ffem = 1.0; // You can replace 1.0 with your desired value for ffem.
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            // profileeAm (58:3)
           
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffffffff)),
              color: Color(0xffffffff),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupojsdWyf (5qhh4jya8SAGXNT4XBoJSd)
                    padding: EdgeInsets.fromLTRB(
                        26 * fem, 53 * fem, 51 * fem, 25 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // bambambuttonRaq (58:131)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 193 * fem, 30 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // backbuttonLxh (58:132)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 23 * fem, 0 * fem),
                                width: 36 * fem,
                                height: 36 * fem,
                                child: TextButton(
                                  onPressed: () {
                                    // Navigate back to the previous page
                                    Navigator.pop(context);
                                  },
                                  child: Icon(Icons.arrow_back,
                                      color: Colors.black),
                                ),
                              ),
                              Container(
                                // profileXNh (58:135)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 2 * fem),
                                child: Text(
                                  'Profile',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 20 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // userdetailsLbK (58:127)
                          margin: EdgeInsets.fromLTRB(
                              61 * fem, 0 * fem, 35 * fem, 18 * fem),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50 * fem),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // n14XK (58:128)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 14 * fem),
                                width: 150 * fem,
                                height: 150 * fem,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50 * fem),
                                  child: Image.asset(
                                    'assets/bam.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                // steffanyarabinatics9of (58:129)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 2 * fem, 8 * fem),
                                child: Text(
                                  'Steffany Arabinatics',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 20 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // kyobashimidbldg1310kyobashi2ch (58:130)
                                constraints: BoxConstraints(
                                  maxWidth: 220 * fem,
                                ),
                                child: Text(
                                  'Kyobashi MID Bldg., 13-10, \nKyobashi 2-chome, Chuo-ku, Tokyo',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0x4c000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // editprofilewUd (58:123)
                          margin: EdgeInsets.fromLTRB(
                              127 * fem, 0 * fem, 104 * fem, 18 * fem),
                          padding: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 1.25 * fem, 0 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // editprofileTSy (58:124)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 7.25 * fem, 0 * fem),
                                child: Text(
                                  'Edit Profile',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // solarpenlinearAcH (58:125)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 1 * fem),
                                width: 12.5 * fem,
                                height: 12.5 * fem,
                                child: Icon(Icons.create_rounded,
                                    color: Color.fromRGBO(242, 79, 4, 1),
                                    size: 16),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupcvqqdVs (5qhdnkboqirA9fGMm4cvQq)
                          margin: EdgeInsets.fromLTRB(
                              17 * fem, 0 * fem, 0 * fem, 0 * fem),
                          width: double.infinity,
                          height: 45 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // bookmarkwWZ (58:120)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 29 * fem, 0 * fem),
                                width: 135 * fem,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xfff24f04),
                                  borderRadius: BorderRadius.circular(50 * fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'Bookmark',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 18 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.5 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // settingsoYm (58:117)
                                width: 135 * fem,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xfff24f04)),
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(50 * fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'Settings',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 18 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.5 * ffem / fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                      child: Column(children: [
                    Container(
                        // autogroupcn1wq5s (5qhe3fLddryMMZUG1TcN1w)
                        width: double.infinity,
                        height: 1000 * fem,
                        child: Stack(children: [
                          Positioned(
                     left: 35 * fem,
                              child: Container(
                                  width: 325.17 * fem,
                                  height: 385 * fem,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // autogroupzek9uLd (5qheEA39PgVN7aaNL1zek9)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 0 * fem, 18 * fem),
                                        width: double.infinity,
                                        height: 300 * fem,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // bookmark1qVB (58:61)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  42.83 * fem,
                                                  0 * fem),
                                              width: 141.17 * fem,
                                              height: double.infinity,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    // rectangle661xJu (58:62)
                                                    left: 4 * fem,
                                       
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 135 * fem,
                                                        height: 180 * fem,
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20 *
                                                                            fem),
                                                            border: Border.all(
                                                                color: Color(
                                                                    0x33000000)),
                                                            color: Color(
                                                                0xffffffff),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    // bambamsNmw (58:64)
                                                    left: 14 * fem,
                                                    top: 106 * fem,
                                                    
                                                    child: Align(
                                                      
                                                      child: SizedBox(
                                                        
                                                        width: 100 * fem,
                                                        height: 20 * fem,
                                                        child: Text(
                                                          'Bam-bam’s',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 14 * ffem,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            height: 1.5 *
                                                                ffem /
                                                                fem,
                                                            color: Color(
                                                                0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    // starrx1 (58:65)
                                                    left: 14 * fem,
                                                    top: 123 * fem,
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              2 * fem,
                                                              5 * fem),
                                                      width: 30 * fem,
                                                      height: 13.79 * fem,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    20 * fem),
                                                      ),
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            // staryFw (58:67)
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    2 * fem,
                                                                    0 * fem),
                                                            width: 10 * fem,
                                                            height: 12 * fem,
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20 *
                                                                              fem),
                                                              child:
                                                                  Image.asset(
                                                                'assets/Star.png',
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            // 6bT (58:66)
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    1 * fem,
                                                                    0 * fem,
                                                                    0 * fem),
                                                            child: Text(
                                                              '4.98',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize:
                                                                    7 * ffem,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                height: 1.5 *
                                                                    ffem /
                                                                    fem,
                                                                color: Color(
                                                                    0xff000000),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    // clockp1f (58:68)
                                                    left: 59 * fem,
                                                    top: 124 * fem,
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              5.5 * fem,
                                                              0 * fem),
                                                      width: 57 * fem,
                                                      height: 12.79 * fem,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    20 * fem),
                                                      ),
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            // vector7Ff (58:69)
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    2.5 * fem,
                                                                    0 * fem),
                                                            width: 10 * fem,
                                                            height: 10 * fem,
                                                            child: Image.asset(
                                                              'assets/time.png',
                                                            ),
                                                          ),
                                                          Text(
                                                            // minRGM (58:70)
                                                            '15 - 20 min',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize:
                                                                  7* ffem,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              height: 1.5 *
                                                                  ffem /
                                                                  fem,
                                                              color: Color(
                                                                  0xff000000),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    // logoshopAUq (58:71)
                                                    left: 4 * fem,
                                                   
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 135 * fem,
                                                        height: 120 * fem,
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20 * fem),
                                                          child: Image.asset(
                                                              'assets/bam.png'),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    // bookmarkmwo (58:85)
                                                    left: 101 * fem,
                                                    top: 6 * fem,
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 30 * fem,
                                                        height: 30 * fem,
                                                        child: Image.asset(
                                                            'assets/.png'),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // bookmark2u2R (58:89)
                                              width: 141.17 * fem,
                                              height: double.infinity,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    // rectangle661SY9 (58:90)
                                                    left: 4 * fem,

                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 135 * fem,
                                                        height: 180 * fem,
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20 *
                                                                            fem),
                                                            border: Border.all(
                                                                color: Color(
                                                                    0x33000000)),
                                                            color: Color(
                                                                0xffffffff),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    // bambamsZ6y (58:92)
                                                    left: 14 * fem,
                                                    top: 106 * fem,
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 100 * fem,
                                                        height: 20 * fem,
                                                        child: Text(
                                                          'Bam-bam’s',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 14 * ffem,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            height: 1.5 *
                                                                ffem /
                                                                fem,
                                                            color: Color(
                                                                0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    // stars7f (58:93)
                                                    left: 14 * fem,
                                                    top: 123 * fem,
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              2.5 * fem,
                                                              5 * fem),
                                                      width: 30 * fem,
                                                      height: 13.79 * fem,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    20 * fem),
                                                      ),
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            // starkhF (58:95)
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    2.5 * fem,
                                                                    0 * fem),
                                                            width: 10 * fem,
                                                            height: 12 * fem,
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20 *
                                                                              fem),
                                                              child: Image.asset(
                                                                  'assets/Star.png'),
                                                            ),
                                                          ),
                                                          Container(
                                                            // 5jX (58:94)

                                                            child: Text(
                                                              '4.98',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize:
                                                                    7 * ffem,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                height: 1.5 *
                                                                    ffem /
                                                                    fem,
                                                                color: Color(
                                                                    0xff000000),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    // clockofX (58:96)
                                                    left: 59 * fem,
                                                    top: 124 * fem,
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              6 * fem,
                                                              0 * fem),
                                                      width: 57 * fem,
                                                      height: 12.79 * fem,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    20 * fem),
                                                      ),
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            // vectorWpq (58:97)
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    3 * fem,
                                                                    0 * fem),
                                                            width: 10 * fem,
                                                            height: 10 * fem,
                                                            child: Image.asset(
                                                                'assets/time.png'),
                                                          ),
                                                          Text(
                                                            // mineAM (58:98)
                                                            '15 - 20 min',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize:
                                                                7 * ffem,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 1.5 *
                                                                  ffem /
                                                                  fem,
                                                              color: Color(
                                                                  0xff000000),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    // logoshopnnM (58:99)
                                                    left: 4 * fem,

                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 135 * fem,
                                                        height: 120 * fem,
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20 * fem),
                                                          child: Image.asset(
                                                            'assets/bam.png',
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    // bookmark4SM (58:113)
                                                    left: 101 * fem,
                                                    top: 6 * fem,
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 30 * fem,
                                                        height: 30 * fem,
                                                        child: Image.asset(
                                                            'assets/.png'),
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
                                  )))
                        ]))
                  ]))
                ])));
  }
}
