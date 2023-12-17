import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/start.dart';

import 'transaction_history.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Profile Page',
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isBookmarkSelected = true;
  bool isNotificationEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 15),
            Container(
              child: Row(
                children: [
                  const SizedBox(width: 12),
                  const Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(125),
                      image: const DecorationImage(
                        image: AssetImage('assets/patty.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'John Doe',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    '123 Main Street, Cityville, USA',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Edit Profile',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(width: 5),
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          // Handle Edit Profile
                        },
                        color: const Color(0xfff24f04),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isBookmarkSelected = true;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isBookmarkSelected
                          ? const Color(0xfff24f04)
                          : Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                        side: BorderSide(
                          color: const Color(0xfff24f04),
                        ),
                      ),
                      fixedSize: const Size(160, 45), // Adjust the width here
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 12),
                        Text(
                          'Transaction',
                          style: TextStyle(
                            fontSize: 20,
                            color: isBookmarkSelected
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isBookmarkSelected = false;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isBookmarkSelected
                          ? Colors.white
                          : const Color(0xfff24f04),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                        side: BorderSide(
                          color: const Color(0xfff24f04),
                        ),
                      ),
                      fixedSize: const Size(160, 45), // Adjust the width here
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 12),
                        Text(
                          'Settings',
                          style: TextStyle(
                            fontSize: 20,
                            color: isBookmarkSelected
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            isBookmarkSelected ? _buildShopItems() : _buildProfileSettings(),
          ],
        ),
      ),
    );
  }

  Widget _buildShopItems() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Small Boxes: Total Ordered and Total Cancelled
          Row(
            children: [
              // Transaction Summary Box: Total Ordered
              Container(
                width: 150,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFF24F04)),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Total Ordered',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '15', // Replace with actual total ordered count
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),

              // Transaction Summary Box: Total Cancelled
              Container(
                width: 150,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFF24F04)),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Total Cancelled',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '3', // Replace with actual total cancelled count
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Larger Box: Order Transaction Lists with Dates
          GestureDetector(
  onTap: () {
    // Handle the click, e.g., navigate to another page
    Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => TransactionPage(),
    ),
  );
    
  },
  child: Container(
    width: 350, // Adjust the width as needed
    margin: const EdgeInsets.all(20),
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      border: Border.all(color: Color(0xFFF24F04)),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Order Transactions',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 10),

        // Example Order Transaction Box
        _buildOrderTransactionBox('Order #123', '23-06-08'),

        // Add more order transaction boxes as needed
        _buildOrderTransactionBox('Order #124', '23-06-09'),
        _buildOrderTransactionBox('Order #125', '23-06-10'),
        _buildOrderTransactionBox('Order #125', '23-06-10'),
        _buildOrderTransactionBox('Order #125', '23-06-10'),
        _buildOrderTransactionBox('Order #125', '23-06-10'),
        _buildOrderTransactionBox('Order #125', '23-06-10'),
      ],
    ),
  ),
),
        ]
    ),
    );
  }

  Widget _buildOrderTransactionBox(String orderText, String dateText) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFF24F04)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            orderText,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text(
            dateText,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileSettings() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          const Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey,
          ),
          const SizedBox(height: 20),
          const Text(
            'Profile Settings',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const Text(
                'Allow Notifications',
                style: TextStyle(fontSize: 16, color: Color(0xfff24f04)),
              ),
              const Spacer(),
              Switch(
                value: isNotificationEnabled,
                onChanged: (bool value) {
                  setState(() {
                    isNotificationEnabled = value;
                  });
                  // Handle switch, e.g., save the state to preferences
                },
                activeColor: const Color(0xfff24f04),
              ),
            ],
          ),
          const SizedBox(height: 32.0),
          ElevatedButton(
            onPressed: () {
              // Navigate to another page (Opportunities Page)
              _navigateToOpportunities(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xfff24f04),
              minimumSize: const Size(double.infinity, 45),
            ),
            child: const Text('Opportunities'),
          ),
          const SizedBox(height: 25.0),
          ElevatedButton(
            onPressed: () {
              // Handle Logout
              _logout(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xfff24f04),
              minimumSize: const Size(double.infinity, 45),
            ),
            child: const Text('Logout', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
  
void _logout(BuildContext context) {
    FirebaseAuth.instance.signOut();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const StartPage(),
      ),
    );
  }

  void _navigateToOpportunities(BuildContext context) {
    // Add logic for navigating to the Opportunities page
    // For demonstration purposes, let's navigate to a placeholder OpportunitiesPage
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OpportunitiesPage(),
      ),
    );
  }
}

class ShopItem extends StatelessWidget {
  const ShopItem({
    Key? key,
    required this.restaurantName,
    required this.rating,
    required this.estimatedTime,
    required this.imageAsset,
  }) : super(key: key);

  final String restaurantName;
  final double rating;
  final String estimatedTime;
  final String imageAsset;

  @override
  Widget build(BuildContext context) {
    // Customize the appearance of the ShopItem widget as needed
    return Container(
        // ... (Your ShopItem widget content)
        );
  }
}

class OpportunitiesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Opportunities'),
      ),
      body: Center(
        child: const Text('Opportunities Page Content'),
      ),
    );
  }
}
