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
            isBookmarkSelected ? _buildShopItems() : _buildProfileSettings(),//selection if bookmark or profile settings
          ],
        ),
      ),
    );
  }

Widget _buildShopItems() { //bookmarks
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


  Widget _buildProfileSettings() { //profile
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