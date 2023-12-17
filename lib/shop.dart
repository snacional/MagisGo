import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'shop_main_page.dart';
import 'shopmodel.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
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
      // Filter shops based on the search term
      final List<ShopModel> filteredShops = snapshot.data!
          .where((shop) =>
              shop.name.toLowerCase().contains(searchTerm.toLowerCase()))
          .toList();

      if (filteredShops.isEmpty) {
        return Center(child: Text('No matching shops found.'));
      }

      return Column(
        children: filteredShops.map((shop) {
          return ShopButton(
            shop: shop, // Pass the ShopModel instance
            onTap: () {
              // Pass the selected restaurant information to ShopMainPage
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShopMainPage(shop: shop, rating: null, estimate: null, image: null,),
                ),
              );
            },
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
      final snapshot =
          await FirebaseFirestore.instance.collection('Restaurant').get();
      return snapshot.docs
          .map((document) =>
              ShopModel.fromMap(document.data() as Map<String, dynamic>))
          .toList();
    } catch (e) {
      print('Error fetching data: $e');
      throw 'Something went wrong. Please try again';
    }
  }

 
}

class ShopButton extends StatefulWidget {
  final VoidCallback onTap;
  final ShopModel shop;

  const ShopButton({
    required this.onTap,
    required this.shop,
  });

  @override
  _ShopButtonState createState() => _ShopButtonState();
}

class _ShopButtonState extends State<ShopButton> {
  bool isBookmarked = false;
  bool isClickable = true; // New variable to track clickability

  @override
  Widget build(BuildContext context) {
    final double pixelRatio = WidgetsBinding.instance!.window.devicePixelRatio;
    const borderColor = Color(0x7ff24f04);
    const bgColor = Color(0xfffcfcfc);

    return GestureDetector(
      onTap: () {
        // Check if the button is clickable
        if (isClickable) {
          // Toggle the bookmarked state
          setState(() {
            isBookmarked = !isBookmarked;
            isClickable = false; // Disable the button after the first click
          });

          // Perform the action based on the bookmarked state
          if (isBookmarked) {
            // Remove the shop from bookmarks
            removeFromBookmarks(widget.shop.name);
          } else {
            // Add the shop to bookmarks
            addToBookmarks(widget.shop.name);
          }

          // Navigate to the MenuPage
          widget.onTap();
        }
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
                GestureDetector(
                  onTap: () {
                    // Direct to the MenuPage when tapping on the image
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                       builder: (context) => ShopMainPage(shop: widget.shop, rating: null, estimate: null, image: null,),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 60 * pixelRatio, // Adjusted image height
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(widget.shop.image),
                        fit: BoxFit.cover,
                      ),
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
                    isBookmarked
                        ? Icons.bookmark
                        : Icons.bookmark_border,
                    color: Color(0xfff24f04),
                    size: 10 * pixelRatio, // Adjusted icon size/ Adjusted icon size
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 25, bottom: 8.1),
              child: Text(
                widget.shop.name,
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
                        widget.shop.rating.toString(),
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
                    children: [
                      Text(
                         widget.shop.estimate ?? 'Default Estimate',
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
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  void addToBookmarks(String restaurantName) {
    // Add logic to add the shop to the user's bookmarks
    updateUserBookmarks(restaurantName, true);
  }

  void removeFromBookmarks(String restaurantName) {
    // Add logic to remove the shop from the user's bookmarks
    updateUserBookmarks(restaurantName, false);
  }

  void updateUserBookmarks(String restaurantName, bool addToBookmarks) async {
    try {
      // Fetch the user information from the 'User' collection
      User? user = FirebaseAuth.instance.currentUser;

      if (user != null) {
        final String userId = user.uid;

        // Get the current bookmarks of the user
        final DocumentSnapshot<Map<String, dynamic>> userSnapshot =
            await FirebaseFirestore.instance.collection('User').doc(userId).get();

        // Extract the current bookmarks list or initialize it if not present
        List<String> bookmarks =
            List<String>.from(userSnapshot.data()?['bookmarks'] ?? []);

        // Check if the shop is already bookmarked
        if (addToBookmarks && !bookmarks.contains(restaurantName)) {
          // Add the restaurant to bookmarks
          bookmarks.add(restaurantName);
        } else if (!addToBookmarks && bookmarks.contains(restaurantName)) {
          // Remove the restaurant from bookmarks
          bookmarks.remove(restaurantName);
        }

        // Update the user's bookmarks in Firestore
        await FirebaseFirestore.instance.collection('User').doc(userId).update({
          'bookmarks': bookmarks,
        });

        // Optionally, show a confirmation message or handle success
      } else {
        // Handle the case where the user is not authenticated
        print('User is not authenticated.');
      }
    } catch (e) {
      print('Error updating bookmarks: $e');
      // Handle errors, e.g., show an error message
    }

    // Enable the button after a delay to allow for the next click
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        isClickable = true;
      });
    });
  }
}

void main() {
  runApp(const MaterialApp(
    title: 'MagisGO',
    home: ShopPage(),
  ));
}
