 import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/orderpage.dart';

import 'shopmodel.dart';

class ShopMainPage extends StatefulWidget {
  final ShopModel shop;

  const ShopMainPage({Key? key, required this.shop, required rating, required estimate, required image}) : super(key: key);

  @override
  _ShopMainPageState createState() => _ShopMainPageState();
}

class _ShopMainPageState extends State<ShopMainPage> {
  int selectedPageIndex = 0;
  String searchQuery = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FutureBuilder<String>(
            future: _fetchRestaurantName(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else if (snapshot.hasData) {
                return Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.white,
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      const SizedBox(width: 8),
                      Text(
                        snapshot.data!,
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                return Container(); // Handle other states if needed
              }
            },
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
            child: Text(
              'Our Food',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 90, 89, 89),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
            child: Text(
              'Special For You',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xfff24f04),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
              ),
              child: Center(
                child: TextField(
  onChanged: (value) {
    setState(() {
      searchQuery = value;
    });
  },
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    hintText: 'Search for foods/shop',
                    hintStyle: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0x7f000000),
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/Search.png',
                        width: 16,
                        height: 16,
                        color: const Color(0xff000000),
                      ),
                    ),
                    prefixIconConstraints: const BoxConstraints(
                      minWidth: 40,
                      minHeight: 40,
                    ),
                  ),
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
          ),
        SizedBox(
  height: 50,
  child: ListView(
    scrollDirection: Axis.horizontal,
    physics: const BouncingScrollPhysics(),
    children: [
      UnderlineButton(
        title: 'All', // You may replace 'All' with the appropriate property of ShopModel
        isSelected: selectedPageIndex == 0,
        onPressed: () {
          setState(() {
            selectedPageIndex = 0;
          });
        },
      ),
      UnderlineButton(
        title: 'Burger', // Replace with the property from ShopModel
        isSelected: selectedPageIndex == 1,
        onPressed: () {
          setState(() {
            selectedPageIndex = 1;
                      });
                    },
                  ),
                   UnderlineButton(
        title: 'Fries', // Replace with the property from ShopModel
        isSelected: selectedPageIndex == 2,
        onPressed: () {
          setState(() {
            selectedPageIndex = 2;
                      });
                    },
                  ),
                   UnderlineButton(
        title: 'Chicken', // Replace with the property from ShopModel
        isSelected: selectedPageIndex == 3,
        onPressed: () {
          setState(() {
            selectedPageIndex = 3;
                      });
                    },
                  ),
                   UnderlineButton(
        title: 'Drinks', // Replace with the property from ShopModel
        isSelected: selectedPageIndex == 4,
        onPressed: () {
          setState(() {
            selectedPageIndex = 4;
                      });
                    },
                  ),
                   UnderlineButton(
        title: 'Snacks', // Replace with the property from ShopModel
        isSelected: selectedPageIndex == 5,
        onPressed: () {
          setState(() {
            selectedPageIndex = 5;
                      });
                    },
                  ),
                   UnderlineButton(
        title: 'Desserts', // Replace with the property from ShopModel
        isSelected: selectedPageIndex == 6,
        onPressed: () {
          setState(() {
            selectedPageIndex = 6;
                      });
                    },
                  ),
              ],
            ),
          ),
          Expanded(
            child: PageMenu(selectedPageIndex: selectedPageIndex, shop: widget.shop),
          ),
        ],
      ),
    );
  }

  Future<String> _fetchRestaurantName() async {
    // Access the selected restaurant's name from the widget
  // Simulating a delay
     return widget.shop.name;
    
  }
}

class PageMenu extends StatelessWidget {
  final int selectedPageIndex;
  final ShopModel shop;

  const PageMenu({required this.selectedPageIndex, required this.shop});
  
  get searchQuery => null;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<MenuItem>>(
      future: getMenuItems(selectedPageIndex, shop),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else if (snapshot.hasData) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return snapshot.data![index];
            },
          );
        } else {
          return Container(); // Handle other states if needed
        }
      },
    );
  }

 Future<List<MenuItem>> getMenuItems(int pageIndex, ShopModel shop) async {
  try {
    QuerySnapshot<Map<String, dynamic>> querySnapshot = await FirebaseFirestore.instance
        .collection('Menu')
        .where('Restaurant', isEqualTo: shop.name)
        .where('Type', isEqualTo: getMenuType(pageIndex))
        .where('Name', isGreaterThanOrEqualTo: searchQuery)  // Add this line for search filtering
        .get();

    return querySnapshot.docs.map((doc) {
      return MenuItem(
        documentId: doc.id,
        title: doc['Name'],
        imageAsset: doc['Image'],
        price: doc['Price'],
        rating: doc['Rating'],
        preparationTime: doc['Estimate'],
      );
    }).toList();
  } catch (e) {
    print('Error fetching menu items: $e');
    return [];
  }
}

  String getMenuType(int pageIndex) {
  // If 'All' is selected, return an empty string to exclude the 'Type' filter
  if (pageIndex == 0) {
    return '';
  }

  // For other categories, return the corresponding type
  switch (pageIndex) {
    case 1:
      return 'Burger';
    case 2:
      return 'Fries';
    case 3:
      return 'Chicken';
    case 4:
      return 'Drinks';
    case 5:
      return 'Snack';
    case 6:
      return 'Desserts';
    default:
      return '';
  }
}
}class MenuItem extends StatelessWidget {
  final String documentId;
  final String title;
  final String imageAsset;
  final double price;
  final double rating;
  final String preparationTime;

  const MenuItem({
    required this.documentId,
    required this.title,
    required this.imageAsset,
    required this.price,
    required this.rating,
    required this.preparationTime,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OrderPage(
              
                itemName: title,
                itemImage: imageAsset,
                itemPrice: price,
              ),
            ),
          );
        },
        child: Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: Image.asset(
                    imageAsset,
                    height: 120,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '\$$price',
                        style: const TextStyle(fontFamily: 'Poppins', fontSize: 14, color: Colors.black87),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.yellow),
                          const SizedBox(width: 4),
                          Text(
                            '$rating',
                            style: const TextStyle(fontFamily: 'Poppins', fontSize: 14, color: Colors.black87),
                          ),
                          const SizedBox(width: 8),
                          const Icon(Icons.timer, color: Colors.black54, size: 16),
                          const SizedBox(width: 4),
                          Text(
                            preparationTime,
                            style: const TextStyle(fontFamily: 'Poppins', fontSize: 14, color: Colors.black87),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class UnderlineButton extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onPressed;

  const UnderlineButton({
    required this.title,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          border: isSelected ? const Border(bottom: BorderSide(width: 2)) : null,
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: isSelected ? Colors.black : Colors.grey,
          ),
        ),
      ),
    );
  }
}
