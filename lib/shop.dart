import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final fem = 1.0; // You can replace 1.0 with your desired value for fem.
  final ffem = 1.0;

  // State variable to store the search term
  String searchTerm = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
           padding: EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Column(children: [
          Container(
            padding:
                EdgeInsets.fromLTRB(0 * fem, 36 * fem, 0 * fem, 15 * fem),
               
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(
                      123.5 * fem, 0 * fem, 0 * fem, 17 * fem),
                  padding: EdgeInsets.fromLTRB(
                      166.5 * fem, 7 * fem, 0 * fem, 3 * fem),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      child: Image.asset(
                        'assets/Noti.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
               
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0x4cd9d9d9),
                    borderRadius: BorderRadius.circular(20),
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
              ],
            ),
          ),
          Container(
            // shopsCJ5 (58:721)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
            width: double.infinity,
            child: Text(
              'Shops',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20 * ffem,
                fontWeight: FontWeight.w600,
                height: 1.5 * ffem / fem,
                color: Color(0xff000000),
              ),
            ),
          ),
         
             Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 
                  
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
                 ]),
                   )) ;
                
  }
}

void main() {
  runApp(MaterialApp(
    title: 'MagisGO',
    home: ShopPage(),
  ));
}
