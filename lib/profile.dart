import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Profile Page',
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    iconSize: 20,
                    onPressed: () {
                      // Handle back button press
                      Navigator.pop(context);
                    },
                  ),
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
                      borderRadius:
                          BorderRadius.circular(75), // half of width and height
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
                          fontWeight: FontWeight.w600,
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
            // Bookmark and Settings
            Container(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle Bookmark
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xfff24f04),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      fixedSize: const Size(135, 45),
                    ),
                    child: const Column(
                      children: [
                        SizedBox(height: 8),
                        Text(
                          'Bookmark',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Handle Settings
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                        side: const BorderSide(
                            color: Color(0xfff24f04)), // Border color
                      ),
                      fixedSize: const Size(135, 45),
                    ),
                    child: const Column(
                      children: [
                        SizedBox(height: 8),
                        Text(
                          'Settings',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black, // Text color
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Scrollable Shop Items
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    child: const Column(
                      children: [
                        ShopItem(),
                        ShopItem(),
                        ShopItem(),
                      ],
                    ),
                  ),
                  Container(
                    child: const Column(
                      children: [
                        ShopItem(),
                        ShopItem(),
                        ShopItem(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShopItem extends StatelessWidget {
  const ShopItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      width: 150,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image:
                    AssetImage("meals.png"), // Replace with your actual image
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text('Bam', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.bookmark,
              color: const Color(0xfff24f04),),
              SizedBox(width: 5),
              Text('Bookmark'),
            ],
          ),
        ],
      ),
    );
  }
}
