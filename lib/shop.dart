import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class ShopModel {
  final String name;
  final double rating;
  final String estimate;
  final String image;

  ShopModel({
    required this.name,
    required this.rating,
    required this.estimate,
    required this.image,
  });

  factory ShopModel.fromMap(Map<String, dynamic> map) {
    return ShopModel(
      name: map['Name'] ?? '',
      rating: (map['Rating'] ?? 0.0).toDouble(),
      estimate: map['Estimate'] ?? '',
      image: map['Image'] ?? '',
    );
  }
}

class _ShopPageState extends State<ShopPage> {
  String searchTerm = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 36, 0, 15),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(123.5, 0, 0, 17),
                    padding: EdgeInsets.fromLTRB(166.5, 7, 0, 3),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        height: 25,
                        width: 25,
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
                      color: const Color(0x4cd9d9d9),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(7, 0, 65, 0),
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
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
              width: double.infinity,
              child: Text(
                'Shops',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  height: 1.5,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            FutureBuilder<List<ShopModel>>(
              future: fetchShopData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  // Show a loading indicator while waiting for data
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  // Handle errors more gracefully (show a Snackbar or another user-friendly message)
                  return Center(child: Text('Error loading data.'));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return Center(child: Text('No data available.'));
                } else {
                  final shops = snapshot.data!;
                  return Column(
                    children: shops.map((shop) {
                      return ShopButton(
                        restaurantName: shop.name,
                        rating: shop.rating,
                        estimatedTime: shop.estimate,
                        imageAsset: shop.image,
                      );
                    }).toList(),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<List<ShopModel>> fetchShopData() async {
    try {
      final snapshot = await FirebaseFirestore.instance.collection('Restaurant').get();
      return snapshot.docs.map((document) => ShopModel.fromMap(document.data() as Map<String, dynamic>)).toList();
    } catch (e) {
      print('Error fetching data: $e');
      throw 'Something went wrong. Please try again';
    }
  }
}

class ShopButton extends StatelessWidget {
  final String restaurantName;
  final double rating;
  final String estimatedTime;
  final String imageAsset;

  const ShopButton({
    required this.restaurantName,
    required this.rating,
    required this.estimatedTime,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    const borderColor = Color(0x7ff24f04);
    const bgColor = Color(0xfffcfcfc);

    return GestureDetector(
      onTap: () {
        // Add your onTap logic here
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 40),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          color: bgColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(imageAsset),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(4),
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.bookmark,
                    color: Color(0xfff24f04),
                    size: 18,
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 25, bottom: 8.1),
              child: Text(
                restaurantName,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 25, bottom: 13.1),
              child: Row(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        rating.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 25),
                  Container(
                    width: 12.19,
                    height: 11.13,
                    child: Image.asset(
                      'assets/time.png',
                      width: 12.19,
                      height: 12.13,
                    ),
                  ),
                  const SizedBox(width: 3.81),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '15 - 20 min',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 27, top: 10),
              height: 14,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  for (final item in ['Burger', 'Chicken', 'Fries', 'Sundae'])
                    Container(
                      width: 55,
                      height: double.infinity,
                      margin: const EdgeInsets.only(right: 35),
                      decoration: BoxDecoration(
                        color: const Color(0x7fd9d9d9),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          item,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    title: 'MagisGO',
    home: ShopPage(),
  ));
}
