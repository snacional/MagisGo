import 'package:flutter/material.dart';

import 'complete.dart';
import 'shop_item.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // App bar container
          Container(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/shop.png', // Adjust the path as needed
                      width: 60,
                      height: 60,
                    ),
                    const SizedBox(width: 8.0),
                    const Text(
                      "Bam-Bam's Store",
                      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    "Menu",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          // Scrollable content
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ShopItemsPage(),
                            ),
                          );
                        },
                        child: _buildOrderBox(
                          "1",
                          "Burger",
                          'assets/cheese.jpg', // Image path for Orders
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ShopItemsPage(),
                            ),
                          );
                        },
                        child: _buildOrderBox(
                          "2",
                          "Fries",
                          'assets/cheese.jpg', // Image path for Order Processing
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20), // Adjust the height based on your preference
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ShopItemsPage(),
                            ),
                          );
                        },
                        child: _buildOrderBox(
                          "1",
                          "Sandwiches",
                          'assets/cheese.jpg', // Image path for Cancelled Order
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ShopItemsPage(),
                            ),
                          );
                        },
                        child: _buildOrderBox(
                          "2",
                          "Desserts",
                          'assets/cheese.jpg', // Image path for Ready For Pickup
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CompleteOrderPage(),
                            ),
                          );
                        },
                        child: _buildOrderBox(
                          "2",
                          "Drinks",
                          'assets/cheese.jpg', // Image path for Completed Transactions
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CompleteOrderPage(),
                            ),
                          );
                        },
                        child: _buildOrderBox(
                          
                          "2",
                          "Candies",
                          'assets/burger.jpg', // Image path for Completed Transactions
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20), // Adjust the height based on your preference
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOrderBox(String number, String description, String imageAsset) {
  return Container(
    width: 200,
    height: 250,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      border: Border.all(color: const Color(0xFFF24F04)),
      boxShadow: [
        BoxShadow(
          color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.2),
          blurRadius: 6.0,
          spreadRadius: 0.0,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically
      crossAxisAlignment: CrossAxisAlignment.center, // Center the content horizontally
      children: [
        Container(
          width: 150,
          height: 110,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            image: DecorationImage(
              image: AssetImage(imageAsset),
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Text(
            number,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            description,
            style: const TextStyle(fontSize: 16),
             textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
  );
}
}