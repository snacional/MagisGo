import 'dart:ui';

import 'package:flutter/material.dart';

import 'add_quantity.dart';

class ShopItemsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        // Navigate back when the back button is pressed
                        Navigator.pop(context);
                      },
                    ),
                    const SizedBox(width: 8.0),
                    const Text(
                      'Burgers',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 16.0),
                      child: ElevatedButton.icon(
                        onPressed: () {
                          // Show the input box when the button is pressed
                          _showAddItemDialog(context);
                        },
                        icon: Icon(Icons.add),
                        label: Text('Add Item'),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFF24F04),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 14.0,
                            horizontal: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigate to a new page when the box is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AdjustQuantityPage()),
                      );
                    },
                    child: OrderInfoBox(
                      Item: 'Chicken Burger',
                      Price: '\$200.99',

                      imageAsset:
                          'assets/burger.jpg', // Provide the image asset path
                      starRating: 3,
                      Quantity: 50,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to a new page when the box is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AdjustQuantityPage()),
                      );
                    },
                    child: OrderInfoBox(
                      Item: 'HamBurger',
                      Price: '\$300.99',

                      imageAsset:
                          'assets/burger.jpg', // Provide the image asset path
                      starRating: 3,
                      Quantity: 50,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to a new page when the box is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AdjustQuantityPage()),
                      );
                    },
                    child: OrderInfoBox(
                      Item: 'Cheese Burger',
                      Price: '\$264.99',

                      imageAsset:
                          'assets/burger.jpg', // Provide the image asset path
                      starRating: 3,
                      Quantity: 50,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to a new page when the box is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AdjustQuantityPage()),
                      );
                    },
                    child: OrderInfoBox(
                      Item: 'Big Kahuna Burger',
                      Price: '\$147.99',

                      imageAsset:
                          'assets/burger.jpg', // Provide the image asset path
                      starRating: 3,
                      Quantity: 50,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to a new page when the box is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AdjustQuantityPage()),
                      );
                    },
                    child: OrderInfoBox(
                      Item: 'Not Normal Burger',

                      Price: '\$21.99',

                      imageAsset:
                          'assets/burger.jpg', // Provide the image asset path
                      starRating: 3,
                      Quantity: 50,
                    ),
                  ),
                  // Add more GestureDetector widgets for other OrderInfoBox widgets
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OrderInfoBox extends StatelessWidget {
  final String Item;
  final String Price;

  final String imageAsset;
  final int starRating;
  final int Quantity; // Add star rating as a parameter

  OrderInfoBox({
    required this.Item,
    required this.Price,
    required this.imageAsset,
    required this.starRating,
    required this.Quantity, // Include star rating in the constructor
  });

  @override
  Widget build(BuildContext context) {
    return OrderBox(
      content: [
        Row(
          children: [
            Container(
              width: 125.0,
              height: 125.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: AssetImage(imageAsset),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$Item',
                  style: const TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text('Rating: '),
                    for (int i = 0; i < starRating; i++)
                      Icon(Icons.star, color: Colors.yellow),
                  ],
                ),
                SizedBox(height: 8.0),
                Text('Price: $Price'),
                SizedBox(height: 8.0),
                SizedBox(height: 8.0),
                Text('Quantity: $Quantity'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class OrderBox extends StatelessWidget {
  final List<Widget> content;

  OrderBox({required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.0,
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.symmetric(vertical: 16.0),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFF24F04)),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: content,
      ),
    );
  }
}
 Future<void> _showAddItemDialog(BuildContext context) async {
  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: AlertDialog(
          title: Text('Add Item'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Input field for Item Name
              TextField(
                decoration: InputDecoration(labelText: 'Item Name'),
              ),
              // Input field for Item Price
              TextField(
                decoration: InputDecoration(labelText: 'Item Price'),
              ),
              // Upload Photo icon button
              IconButton(
                icon: Icon(Icons.upload_file),
                onPressed: () {
                  // Handle photo uploading logic here
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                          primary: Color(0xFFF24F04),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 14.0,
                            horizontal: 20.0,
                          ),
                        ),
                 
                onPressed: () {
                  // Handle the submission logic here
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: const Text('Add'),
              ),
            ],
          ),
        ),
      );
    },
  );
}
