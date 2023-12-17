import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/cart.dart';

class OrderPage extends StatefulWidget {
  final String itemImage;
  final String itemName;
  final double itemPrice;

  OrderPage({Key? key, required this.itemImage, required this.itemName, required this.itemPrice})
      : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  bool isFavorite = false; // Move isFavorite to the OrderPage class
  bool isSwitch = false;
  bool? isCheckbox = false;
  int counter = 0;

  // Define a list of dynamic texts for the horizontal scrollable boxes
  List<Map<String, dynamic>> boxTexts = [
    {'text': 'patty', 'image': 'assets/burger.jpg'},
    {'text': 'tomato', 'image': 'assets/burger.jpg'},
    {'text': 'cheese', 'image': 'assets/burger.jpg'},
    {'text': 'onion', 'image': 'assets/burger.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Photo with back button
            Stack(
              alignment: Alignment.topLeft,
              children: [
                Image.asset(widget.itemImage, width: double.infinity,),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 243, 240, 240)),
                ),
              ],
            ),

            // Content container
            Container(
              margin: const EdgeInsets.all(5.0),
              padding: const EdgeInsets.all(5.0),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(2.0),
                    padding: const EdgeInsets.all(2.0),
                    color: Color.fromARGB(255, 255, 255, 255),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.itemName,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color.fromARGB(255, 10, 10, 10),
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // Favorites Button
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  isFavorite = !isFavorite;
                                });
                              },
                              icon: Icon(
                                isFavorite ? Icons.favorite : Icons.favorite_border,
                                color: isFavorite ? Colors.red : Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100.00,
                    margin: const EdgeInsets.all(2.0),
                    padding: const EdgeInsets.all(2.0),
                    color: Color.fromARGB(255, 255, 255, 255),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '₱${widget.itemPrice}',
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(242, 79, 4, 1),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: counter > 0
                                          ? Color.fromRGBO(242, 79, 4, 1)
                                          : Colors.grey,
                                    ),
                                  ),
                                  child: IconButton(
                                    icon: const Icon(Icons.remove),
                                    onPressed: () {
                                      setState(() {
                                        if (counter > 0) {
                                          counter--;
                                        }
                                      });
                                    },
                                    color: counter > 0
                                        ? Color.fromRGBO(242, 79, 4, 1)
                                        : Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                                width:
                                    15), // Add some space between the buttons
                            Text(
                              '$counter',
                              style: const TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                                width:
                                    15), // Add some space between the text and buttons
                            Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Color.fromRGBO(242, 79, 4, 1),
                                    ),
                                  ),
                                  child: IconButton(
                                    icon: const Icon(Icons.add),
                                    onPressed: () {
                                      setState(() {
                                        counter++;
                                      });
                                    },
                                    color: Color.fromRGBO(242, 79, 4, 1),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100.00,
                    margin: const EdgeInsets.all(2.0),
                    padding: const EdgeInsets.all(2.0),
                    color: Color.fromARGB(255, 255, 255, 255),
                    width: double.infinity,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 19.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          'Mahalon burger pero masiram bahala kana',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 13.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        SizedBox(height: 30.0),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(2.0),
                    padding: const EdgeInsets.all(2.0),
                    color: Color.fromARGB(255, 253, 252, 252),
                    width: double.infinity,
                    // Adjust the height as needed without affecting the inner boxes
                    height: 250.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Ingredients',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        const SizedBox(height: 15.0),
                        SizedBox(
                          height:
                              130.0, // Adjust the height of the inner ListView as needed
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: boxTexts.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                margin: const EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(15.0),
                                  border: Border.all(
                                    color: Color.fromARGB(255, 210, 209, 209),
                                    width: 0.5,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 75.0,
                                      width: 150.0,
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(15.0),
                                          bottomLeft: Radius.circular(15.0),
                                          bottomRight: Radius.circular(15.0),
                                          topRight: Radius.circular(15.0),
                                        ),
                                        child: Image.asset(
                                          boxTexts[index]['image'],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 7.5),
                                    Text(
                                      boxTexts[index]['text'],
                                      style: const TextStyle(
                                        fontSize: 16.0,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                    const SizedBox(height: 7.5),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
  style: ElevatedButton.styleFrom(
    primary: isSwitch ? Colors.green : Color.fromRGBO(242, 79, 4, 1),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    minimumSize: const Size(400, 50.0),
  ),
  onPressed: () async {
    // Fetch menu items based on the selected shop
    List<String> menuItems = await fetchMenuItems(widget.itemName);

    // Store the menu items before navigating to the CartPage
   
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CartPage(),
      ),
    );
  },
  child: const Text(
    'Add to Cart',
    style: TextStyle(
      fontFamily: 'Poppins',
      color: Color.fromARGB(255, 255, 255, 255),
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
    ),
  ),
),
                
              
          ]),
        )],
              ),
            ),
          
        );

  }

  // Function to fetch menu items based on the selected shop
  Future<List<String>> fetchMenuItems(String shopName) async {
    try {
      QuerySnapshot<Map<String, dynamic>> querySnapshot = await FirebaseFirestore.instance
          .collection('Menu')
          .where('Restaurant', isEqualTo: shopName)
          .get();

      List<String> menuItems = querySnapshot.docs.map((doc) {
  return doc['Name'].toString();
}).toList();

      return menuItems;
    } catch (e) {
      print('Error fetching menu items: $e');
      return [];
    }
  }
}
