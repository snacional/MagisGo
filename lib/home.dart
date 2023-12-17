import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/shop_main_page.dart';

import 'shopmodel.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'MagisGO',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String searchTerm = '';

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Home',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000),
                    ),
                  ),
                  Image.asset(
                    'assets/Noti.png',
                    width: 25,
                    height: 25,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(
                      30, 217, 217, 217), // Set the background color
                  borderRadius:
                      BorderRadius.circular(20), // Set the border radius
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(7, 0, 65, 0),
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
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                              color: const Color(0x7f000000),
                            ),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            height: 1.5,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 15),
                child: Text(
                  'Popular Shops',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                stream: FirebaseFirestore.instance
                    .collection('Restaurant')
                    .snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const CircularProgressIndicator();
                  }

                  List<QueryDocumentSnapshot<Map<String, dynamic>>>
                      restaurants = snapshot.data!.docs;

                  return CarouselSlider.builder(
                    itemCount: restaurants.length,
                    options: CarouselOptions(
                      height: screenWidth * 0.5,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 5),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    ),
                    itemBuilder:
                        (BuildContext context, int index, int realIndex) {
                      final restaurantData =
                          restaurants[index].data() as Map<String, dynamic>;

                      return RestaurantCard(restaurantData: restaurantData);
                    },
                  );
                },
              ),
              Container(
                width: double.infinity,
                height: screenWidth * 0.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0x40f24f04),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 28.2795257568,
                      top: 10,
                      child: SizedBox(
                        width: 127,
                        height: 53,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 3),
                              width: double.infinity,
                              child: const Text(
                                'Pick your food ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              constraints: const BoxConstraints(
                                maxWidth: 127,
                              ),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: const TextSpan(
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5,
                                    color: Color(0x7f000000),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Some food is discounted \n',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5,
                                        color: Color(0x7f000000),
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'up to 30%',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        height: 1.5,
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
                      left: 142.4881896973,
                      bottom: -44,
                      child: Align(
                        child: SizedBox(
                          width: 215.51,
                          height: 157,
                          child: Image.asset(
                            'assets/Chef.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 72,
                      top: 69,
                      child: Container(
                        width: 56,
                        height: 19,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(77),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Align(
                                child: Container(
                                  width: 56,
                                  height: 13,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF24F04),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: const Text(
                                    'Order Now',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.w700,
                                      height: 1.5,
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
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(2, 0, 0, 19),
                            width: 141,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 4),
                                  width: double.infinity,
                                  child: const Text(
                                    'Popular Menu',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    'Top of the week',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      height: 1.5,
                                      color: Color(0x7f000000),
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
              Center(
                child: StreamBuilder<QuerySnapshot>(
                  stream:
                      FirebaseFirestore.instance.collection('Food').snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return const CircularProgressIndicator();
                    }

                    List<QueryDocumentSnapshot> items = snapshot.data!.docs;

                    return LayoutBuilder(
                      builder: (context, constraints) {
                        // Calculate pixel ratio and screen width for responsiveness
                        double pixelRatio =
                            MediaQuery.of(context).devicePixelRatio;
                        double screenWidth = constraints.maxWidth;

                        // Calculate the width and height based on the screen width
                        double itemWidth =
                            screenWidth * 0.25; // Adjust the factor as needed
                        double itemHeight = itemWidth * 0.55;

                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: items.map((item) {
                              return MenuItem(
                                title: item['Name'],
                                price: '₱ ${item['Price']}.00',
                                imageAsset: item['Image'],
                                itemWidth: itemWidth,
                                itemHeight: itemHeight,
                                pixelRatio: pixelRatio,
                              );
                            }).toList(),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String price;
  final double itemWidth;
  final double itemHeight;
  final double pixelRatio;

  const MenuItem({
    Key? key,
    required this.imageAsset,
    required this.title,
    required this.price,
    required this.itemWidth,
    required this.itemHeight,
    required this.pixelRatio,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 25),
      width: itemWidth,
      child: Column(
        children: [
          Image.asset(
            imageAsset,
            width: itemWidth,
            height: itemHeight * pixelRatio,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 5),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 13,
              fontWeight: FontWeight.w400,
              height: 1.5,
              color: Color(0xff000000),
            ),
          ),
          Text(
            price,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 13,
              fontWeight: FontWeight.w400,
              height: 1.5,
              color: Color(0xfff24f04),
            ),
          ),
        ],
      ),
    );
  }
}

class RestaurantCard extends StatelessWidget {
  final Map<String, dynamic> restaurantData;

  const RestaurantCard({Key? key, required this.restaurantData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to ShopMainPage with the selected restaurant data
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ShopMainPage(
              shop: ShopModel(
                name: restaurantData['Name'],
                rating: restaurantData['Rating'], // Pass the rating value
                estimate: restaurantData['Estimate'], // Pass the estimate value
                image: restaurantData['Image'],
              ), rating: null, estimate: null, image: null,
            ),
          ),
        );
      },
      child: Container(
        width: double.infinity, // Ensure the container takes the full width
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120, // Set a fixed height for the image container
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: NetworkImage(restaurantData['Image']),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 25),
              child: Text(
                restaurantData['Name'],
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
