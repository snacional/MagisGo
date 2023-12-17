import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/start.dart';
import 'package:image_picker/image_picker.dart';

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
  String _userName = '';
 File? _imageFile;

Future<void> _uploadImage(String userId) async {
  try {
    // Determine the file extension based on the selected image file
    String fileExtension = _imageFile!.path.split('.').last.toLowerCase();
    
    // Use the determined file extension in the file name
    String fileName = 'profile_$userId.$fileExtension';

    Reference firebaseStorageRef = FirebaseStorage.instance.ref().child(fileName);

    UploadTask uploadTask = firebaseStorageRef.putFile(_imageFile!);
    await uploadTask.whenComplete(() => null);

    // No need for the imageUrl variable if it's not used immediately
    // String imageUrl = await firebaseStorageRef.getDownloadURL();
  } catch (e) {
    print('Error uploading image: $e');
  }
}


 Widget _buildProfileImage() {
    double imageSize = MediaQuery.of(context).size.width * 0.3;

    return GestureDetector(
      onTap: () {
        _getImage();
      },
      child: Container(
        width: imageSize,
        height: imageSize,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(imageSize / 2),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(imageSize / 2),
          child: _imageFile != null
              ? Image.file(
                  _imageFile!,
                  fit: BoxFit.cover,
                )
              : _buildDefaultImage(),
        ),
      ),
    );
  }
  Widget _buildDefaultImage() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/x.jpg',
          fit: BoxFit.cover,
          width: 150,
          height: 150,
        ),
      
      ],
    );
  }

 Future<void> _getImage() async {
    final picker = ImagePicker();
    try {
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);

      setState(() {
        if (pickedFile != null) {
          _imageFile = File(pickedFile.path);
          _uploadImage(FirebaseAuth.instance.currentUser!.uid);
        } else {
          print('No image selected.');
        }
      });
    } catch (e) {
      print('Error picking image: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    try {
      User? user = FirebaseAuth.instance.currentUser;

      if (user != null) {
        // Fetch user information from Firestore based on UID
        DocumentSnapshot<Map<String, dynamic>> userDoc =
            await FirebaseFirestore.instance.collection('User').doc(user.uid).get();

        if (userDoc.exists) {
          setState(() {
            _userName = userDoc['Name'] ?? '';
          });
        }
      }
    } catch (e) {
      print('Error loading user data: $e');
    }
  }

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
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                 _buildProfileImage(),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      _showEditNameDialog(context);
                    },
                    child: Text(
                      _userName,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
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
                          _showEditNameDialog(context);
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
                            fontSize: 17,
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
  return StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
    stream: FirebaseFirestore.instance
        .collection('User')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .snapshots(),
    builder: (context, userSnapshot) {
      if (userSnapshot.hasError) {
        return Text('Error: ${userSnapshot.error}');
      }

      if (userSnapshot.connectionState == ConnectionState.waiting) {
        return CircularProgressIndicator();
      }

      List<String> bookmarkedRestaurantNames = [];
      if (userSnapshot.hasData) {
        bookmarkedRestaurantNames = (userSnapshot.data!['bookmarks'] as List<dynamic>)
            .cast<String>(); // Assuming 'bookmarks' is a list of restaurant names
      }

      return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: FirebaseFirestore.instance.collection('Restaurant').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }

          List<QueryDocumentSnapshot<Map<String, dynamic>>> restaurants =
              snapshot.data!.docs;

          // Filter restaurants based on bookmarkedRestaurantNames
          List<QueryDocumentSnapshot<Map<String, dynamic>>> bookmarkedRestaurants =
              restaurants.where((restaurant) {
            return bookmarkedRestaurantNames.contains(restaurant['Name']);
          }).toList();

          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: GridView.builder(
  shrinkWrap: true,
  physics: ScrollPhysics(),
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2, // Number of columns
    crossAxisSpacing: 8.0,
    mainAxisSpacing: 8.0,
  ),
  itemCount: bookmarkedRestaurants.length,
  itemBuilder: (context, index) {
    var restaurant = bookmarkedRestaurants[index];
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent), // Set color to transparent
        borderRadius: BorderRadius.circular(10.0), // Adjust as needed
      ),
      child: ShopItem(
        restaurantName: restaurant['Name'],
        rating: restaurant['Rating'].toDouble(),
        estimatedTime: restaurant['Estimate'],
        imageAsset: restaurant['Image'],
        width: 150, // Adjust the width as needed
        isBookmarked: true,
        onBookmarkToggle: (isBookmarked) {
          _toggleBookmark(restaurant['Name'], isBookmarked);
        },
      ),
    );
  },
)

          );
        },
      );
    },
  );
}


void _toggleBookmark(String restaurantName, bool isBookmarked) async {
  try {
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      // Get the user document from Firestore
      DocumentReference<Map<String, dynamic>> userDocRef =
          FirebaseFirestore.instance.collection('User').doc(user.uid);

      // Update the bookmarks list based on the bookmark status
      if (isBookmarked) {
        // If bookmarked, add the restaurant name to the list
        userDocRef.update({
          'bookmarks': FieldValue.arrayUnion([restaurantName]),
        });
      } else {
        // If unbookmarked, remove the restaurant name from the list
        userDocRef.update({
          'bookmarks': FieldValue.arrayRemove([restaurantName]),
        });
      }
    }
  } catch (e) {
    print('Error toggling bookmark: $e');
  }
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

  void _showEditNameDialog(BuildContext context) {
    TextEditingController _nameController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Edit Name'),
        content: TextField(
          controller: _nameController,
          decoration: const InputDecoration(labelText: 'New Name'),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              String newName = _nameController.text.trim();
              if (newName.isNotEmpty) {
                _updateUserName(newName);
                Navigator.of(context).pop();
              }
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  void _updateUserName(String newName) async {
    try {
      User? user = FirebaseAuth.instance.currentUser;

      if (user != null) {
        // Update the user's name in Firestore
        await FirebaseFirestore.instance
            .collection('User')
            .doc(user.uid)
            .update({'Name': newName});

        // Update the local state
        setState(() {
          _userName = newName;
        });
      }
    } catch (e) {
      print('Error updating user name: $e');
    }
  }
}

class ShopItem extends StatelessWidget {
  const ShopItem({
    Key? key,
    required this.restaurantName,
    required this.rating,
    required this.estimatedTime,
    required this.imageAsset,
    required this.width,
    required this.isBookmarked,
    required this.onBookmarkToggle,
  }) : super(key: key);

  final String restaurantName;
  final double rating;
  final String estimatedTime;
  final String imageAsset;
  final double width;
  final bool isBookmarked;
  final Function(bool) onBookmarkToggle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(12,12,12,0), // Adjusted margin
      width: width,
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
            height: width * 0.67, // Maintain the aspect ratio
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(imageAsset),
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                padding: const EdgeInsets.all(3), // Adjusted padding
                margin: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: IconButton(
                  icon: Icon(
                    isBookmarked
                        ? Icons.bookmark
                        : Icons.bookmark_outline,
                    color: Color(0xfff24f04),
                    size: 20, // Adjust the bookmark icon size
                  ),
                  onPressed: () {
                    onBookmarkToggle(!isBookmarked);
                  },
                ),
              ),
            ),
          ),
          // Restaurant Name
          const SizedBox(height: 12), // Adjusted spacing
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12), // Adjusted padding
            child: Text(
              restaurantName,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          // Ratings and Estimated Time
          const SizedBox(height: 12), // Adjusted spacing
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12,), // Adjusted padding
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 12, // Adjusted icon size
                    ),
                    const SizedBox(width: 5),
                    Text(
                      rating.toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12, // Adjusted font size
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.access_time,
                      color: Color(0xfff24f04),
                      size: 12, // Adjusted icon size
                    ),
                    const SizedBox(width: 5),
                    Text(
                      estimatedTime,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12, // Adjusted font size
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

