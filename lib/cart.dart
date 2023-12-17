
import 'package:flutter/material.dart';
import 'package:helloworld/payment_page.dart';


class CartPageArguments {

}

class CartPage extends StatefulWidget {
 

 

  @override
  State<CartPage> createState() => _CartPageState();
}

// The rest of your CartPage class remains unchanged

class _CartPageState extends State<CartPage> {
  List<Map<String, dynamic>> cartItems = [
    {
      'name': 'Chicken Burger With Fries',
      'price': 10.00,
      'quantity': 1,
      'image': 'assets/burger.jpg',
      'category': 'Burger'
    },
    {
      'name': 'Chicken Burger With Fries',
      'price': 10.00,
      'quantity': 1,
      'image':  'assets/burger.jpg',
      'category': 'Burger'
    },
    {
      'name': 'Chicken Burger With Fries',
      'price': 10.00,
      'quantity': 1,
      'image':  'assets/burger.jpg',
      'category': 'Burger'
    },
    {
      'name': 'Chicken Burger With Fries',
      'price': 10.00,
      'quantity': 1,
      'image':  'assets/burger.jpg',
      'category': 'Burger'
    },
    {
      'name': 'Chicken Burger With Fries',
      'price': 15.00,
      'quantity': 1,
      'image':  'assets/burger.jpg',
      'category': 'BurgeShr'
    },
    {
      'name': 'Chicken Burger With Fries',
      'price': 15.00,
      'quantity': 1,
      'image':  'assets/burger.jpg',
      'category': 'Burger'
    },
    {
      'name': 'Chicken Burger With Fries',
      'price': 15.00,
      'quantity': 1,
      'image': 'assets/burger.jpg',
      'category': 'Burger'
    },
    {
      'name': 'Chicken Burger With Fries',
      'price': 15.00,
      'quantity': 1,
      'image':  'assets/burger.jpg',
      'category': 'Burger'
    }, // Your cart items
  ];

  @override
  Widget build(BuildContext context) {
    int totalItems = cartItems.length;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return Card(
                  color: Color.fromARGB(255, 255, 255, 255),
                  margin: const EdgeInsets.all(8.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: const BorderSide(
                        color: Color.fromARGB(
                            255, 188, 188, 188)), // Add black border
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(0.0),
                    title: Container(
                      height: 100.0, // Set the desired height
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15.0),
                              bottomLeft: Radius.circular(15.0),
                              bottomRight: Radius.circular(15.0),
                              topRight: Radius.circular(15.0),
                            ),
                            child: Image.asset(
                              item['image'],
                              width: 100.0, // Set the desired width
                              height: 100.0, // Set the desired height
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            left: 100.0,
                            top: 10.0,
                            bottom: 0.0,
                            right: 0.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0),
                                  child: Text(
                                    item['name'],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19.0,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 2.0),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Text(
                                    item['category'],
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 93, 93, 93),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0),
                                      child: Text(
                                          'Price: \$${item['price'].toStringAsFixed(2)}'),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: InkWell(
                                            onTap: () {
                                              // Decrease quantity
                                              setState(() {
                                                if (item['quantity'] > 1) {
                                                  item['quantity']--;
                                                }
                                              });
                                            },
                                            child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                                border: Border.all(
                                                  color: const Color.fromRGBO(
                                                      242, 79, 4, 1),
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: const Center(
                                                child: Icon(Icons.remove,
                                                    color: Color.fromRGBO(
                                                        242, 79, 4, 1)),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '${item['quantity']}',
                                        ), // Display quantity here
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: InkWell(
                                            onTap: () {
                                              // Increase quantity
                                              setState(() {
                                                item['quantity']++;
                                              });
                                            },
                                            child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                                border: Border.all(
                                                  color: const Color.fromRGBO(
                                                      242, 79, 4, 1),
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: const Center(
                                                child: Icon(Icons.add,
                                                    color: Color.fromRGBO(
                                                        242, 79, 4, 1)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      // Checkout bar outside the SingleChildScrollView
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(
                  255, 99, 99, 99), // Set your desired border color
              width: 0.5, // Set your desired border width
            ),
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Display total price or any other relevant information
                  Text(
                    '$totalItems total Items Selected', // Update this line
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    'Total: \$2000.00',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(242, 79, 4, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      minimumSize: const Size(400, 50.0),
                    ),
                    onPressed: () {
                      // Implement your checkout logic directly here
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PaymentPage(),
                        ),
                      );
                      print('Checkout logic here');
                    },
                    child: const Text(
                      'Checkout',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white, // Set the text color to white
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}