import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MagisGO',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String searchTerm = '';
  final fem = 1.0; // You can replace 1.0 with your desired value for fem.
  final ffem = 1.0; // You can replace 1.0 with your desired value for ffem.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.only(left: 20, top: 20, right: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  // Header Container
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 10 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              'Home',
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
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 4 * fem, 0 * fem, 0 * fem),
                          width: 20 * fem,
                          height: 20 * fem,
                          child: Image.asset(
                            'assets/Noti.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0x4cd9d9d9),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              7 * fem, 0 * fem, 65 * fem, 0 * fem),
                          child: Image.asset(
                            'assets/Search.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  searchTerm = value;
                                });
                              },
                              decoration: InputDecoration(
                                hintText: 'Search for foods/shops',
                                hintStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 13 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0x7f000000),
                                ),
                                border: InputBorder.none,
                              ),
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13 * ffem,
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

                  // Carousel Container
                  Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 4 * fem),
                          width: double.infinity,
                          child: Text(
                            'Popular Shops',
                            textAlign: TextAlign.left,
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
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 40 * fem),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0x7ff24f04)),
                            color: Color(0xfffcfcfc),
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 101.37 * fem,
                                child: Image.asset(
                                  'assets/bam.png',
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(
                                    20 * fem, 5.48 * fem, 17 * fem, 9 * fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 0 * fem, 13.1 * fem),
                                      width: 124 * fem,
                                      height: 45.05 * fem,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 56 * fem,
                                            top: 31.0500488281 * fem,
                                            child: Container(
                                              width: 66 * fem,
                                              height: 14 * fem,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20 * fem),
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        3.81 * fem,
                                                        0 * fem),
                                                    width: 12.19 * fem,
                                                    height: 11.13 * fem,
                                                    child: Image.asset(
                                                      'assets/time.png',
                                                      width: 12.19 * fem,
                                                      height: 11.13 * fem,
                                                    ),
                                                  ),
                                                  Text(
                                                    '15 - 20 min',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 9 * ffem,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height: 1.5 * ffem / fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 0 * fem,
                                            top: 0 * fem,
                                            child: Container(
                                              width: 124 * fem,
                                              height: 45.05 * fem,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20 * fem),
                                              ),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        0 * fem,
                                                        0.14 * fem),
                                                    width: double.infinity,
                                                    child: Text(
                                                      'Bam-bam’s',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        fontSize: 20 * ffem,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height:
                                                            1.5 * ffem / fem,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: double.infinity,
                                                    margin: EdgeInsets.fromLTRB(
                                                        7.50 * fem,
                                                        0 * fem,
                                                        0 * fem,
                                                        0 * fem),
                                                    height: 14 * fem,
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          width: 15 * fem,
                                                          height: 13.7 * fem,
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20 *
                                                                            fem),
                                                            child: Image.asset(
                                                              'assets/Star.png',
                                                              fit: BoxFit
                                                                  .contain,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0 * fem,
                                                                  0.91 * fem,
                                                                  0 * fem,
                                                                  0 * fem),
                                                          child: Text(
                                                            '4.98',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              fontSize:
                                                                  9 * ffem,
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
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 14 * fem,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 55 * fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Color(0x7fd9d9d9),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      20 * fem),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Burger',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 9 * ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5 * ffem / fem,
                                                  color: Color(0x7f000000),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 27 * fem),
                                          Container(
                                            width: 55 * fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Color(0x7fd9d9d9),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      20 * fem),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Chicken',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 9 * ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5 * ffem / fem,
                                                  color: Color(0x7f000000),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 27 * fem),
                                          Container(
                                            width: 55 * fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Color(0x7fd9d9d9),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      20 * fem),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Fries',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 9 * ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5 * ffem / fem,
                                                  color: Color(0x7f000000),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 27 * fem),
                                          Container(
                                            width: 55 * fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Color(0x7fd9d9d9),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      20 * fem),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Sundae',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 9 * ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5 * ffem / fem,
                                                  color: Color(0x7f000000),
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 2.5 * fem,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 15 * fem),
                      width: double.infinity,
                      height: 97 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20 * fem),
                        color: Color(0x40f24f04),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 28.2795257568 * fem,
                            top: 10 * fem,
                            child: Container(
                              width: 127 * fem,
                              height: 53 * fem,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 3 * fem),
                                    width: double.infinity,
                                    child: Text(
                                      'Pick your food ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 13 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    constraints: BoxConstraints(
                                      maxWidth: 127 * fem,
                                    ),
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        style: TextStyle(
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0x7f000000),
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'Some food is discounted \n',
                                            style: TextStyle(
                                              fontSize: 10 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.5 * ffem / fem,
                                              color: Color(0x7f000000),
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'up to 30%',
                                            style: TextStyle(
                                              fontSize: 10 * ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5 * ffem / fem,
                                              color: Color(0xfff24f04),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 142.4881896973 * fem,
                            bottom: -44 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 215.51 * fem,
                                height: 157 * fem,
                                child: Image.asset(
                                  'assets/Chef.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 72 * fem,
                            top: 69 * fem,
                            child: Container(
                              width: 56 * fem,
                              height: 19 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(77 * fem),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0 * fem,
                                    top: 0 * fem,
                                    child: Align(
                                      child: Container(
                                        width: 56 * fem,
                                        height: 13 * fem,
                                        decoration: BoxDecoration(
                                          color: Color(
                                              0xFFF24F04), // Background color F24F04

                                          borderRadius: BorderRadius.circular(
                                              8.0), // Border radius
                                        ),
                                        child: Text(
                                          'Order Now',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 8 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.5 * ffem / fem,
                                            color: Color(0xffffffff),
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
                  ),
                  // popularmenu6pZ (0:292)
                  Positioned(
                      left: 0 * fem,
                      top: 124 * fem,
                      child: Container(
                          child: Row(children: <Widget>[
                        Container(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                  2 * fem,
                                  0 * fem,
                                  0 * fem,
                                  19 * fem,
                                ),
                                width: 141 * fem,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // popularmenuk8R (0:307)
                                      margin: EdgeInsets.fromLTRB(
                                        0 * fem,
                                        0 * fem,
                                        0 * fem,
                                        4 * fem,
                                      ),
                                      width: double.infinity,
                                      child: Text(
                                        'Popular Menu',
                                        textAlign: TextAlign.left,
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
                                      // topoftheweekrx9 (0:306)
                                      width: double.infinity,
                                      child: Text(
                                        'Top of the week',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 13 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0x7f000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]))
                      ]))),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        Column(
                          children: [
                            Container(
                              child: Image.asset('assets/meals.png'),
                            ),
                            Container(
                              child: Text(
                                'BurgerFries Style',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 13 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                '₱ 150.00',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 13 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xfff24f04),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: [
                            Container(
                              child: Image.asset('assets/beverages.png'),
                            ),
                            Container(
                              child: Text(
                                'Coke Pesi Halo Halo',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 13 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                '₱ 300.00',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 13 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xfff24f04),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: [
                            Container(
                              child: Image.asset('assets/desserts.png'),
                            ),
                            Container(
                              child: Text(
                                'Ice Cream with',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 13 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                '₱ 70.00',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 13 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xfff24f04),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]))
                ])));
  }
}
