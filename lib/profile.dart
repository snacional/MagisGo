import 'package:flutter/material.dart';
import 'start.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
  bool isNotificationEnabled = true; // Add this variable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Custom App Bar
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
            // Profile Image and User Info
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          125), // half of width and height
                      image: const DecorationImage(
                        image: AssetImage(
                            'assets/x.jpg'), // Replace with a relevant image
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
            // Bookmark and Settings Toggle Buttons
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
                      fixedSize: const Size(135, 45),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 8),
                        Text(
                          'Bookmark',
                          style: TextStyle(
                            fontSize: 18,
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
                      fixedSize: const Size(135, 45),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 8),
                        Text(
                          'Settings',
                          style: TextStyle(
                            fontSize: 18,
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
            // Scrollable Shop Items or Profile Settings
            isBookmarkSelected ? _buildShopItems() : _buildProfileSettings(),
          ],
        ),
      ),
    );
  }

  Widget _buildShopItems() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: const Column(
            children: [
              ShopItem(
                restaurantName: 'Bam-Bams',
                rating: 4.96,
                estimatedTime: '5-7 mins',
                imageAsset: "meals.png",
              ),
              ShopItem(
                restaurantName: 'Bam-Bams',
                rating: 4.96,
                estimatedTime: '5-7 mins',
                imageAsset: "meals.png",
              ),
              ShopItem(
                restaurantName: 'Bam-Bams',
                rating: 4.96,
                estimatedTime: '5-7 mins',
                imageAsset: "meals.png",
              ),
            ],
          ),
        ),
        Container(
          child: const Column(
            children: [
              ShopItem(
                restaurantName: 'Bam-Bams',
                rating: 4.96,
                estimatedTime: '5-7 mins',
                imageAsset: "meals.png",
              ),
              ShopItem(
                restaurantName: 'Bam-Bams',
                rating: 4.96,
                estimatedTime: '5-7 mins',
                imageAsset: "meals.png",
              ),
              ShopItem(
                restaurantName: 'Bam-Bams',
                rating: 4.96,
                estimatedTime: '5-7 mins',
                imageAsset: "meals.png",
              ),
            ],
          ),
        ),
      ],
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
              
              // Handle Logout
              _logout(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xfff24f04),
              minimumSize: const Size(double.infinity, 45),
            ),
            child: const Text('Logout'),
          ),
        ],
      ),
    );
  }

  void _logout(BuildContext context) {
    // Add logic for handling logout
    // For demonstration purposes, let's navigate back to the login page
    FirebaseAuth.instance.signOut();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StartPage(),
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
    return Container(
      margin: const EdgeInsets.all(20),
      width: 150,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Restaurant Image with Bookmark Button
          Container(
            width: double.infinity,
            height: 100, // Adjust the height as needed
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(imageAsset), // Replace with your actual image
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
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
            ),
          ),
          // Restaurant Name
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              restaurantName,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          // Ratings and Estimated Time
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 10,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      rating.toString(), // Assuming rating is a String
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.access_time,
                      color: Color(0xfff24f04),
                      size: 10,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      estimatedTime,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}


