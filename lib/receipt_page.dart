import 'package:flutter/material.dart';

class ReceiptPage extends StatelessWidget {
  // Function to generate a row for an item
  Widget buildItemRow(String itemName, String quantity, String price) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(itemName),
          Text(quantity),
          Text(price),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Sample item details
    List<Map<String, String>> items = [
      {'name': 'Item 1', 'quantity': '2', 'price': '\$20.00'},
      {'name': 'Item 2', 'quantity': '1', 'price': '\$15.00'},
      {'name': 'Item 3', 'quantity': '1', 'price': '\$15.00'},
      {'name': 'Item 4', 'quantity': '1', 'price': '\$15.00'},
      {'name': 'Item 4', 'quantity': '1', 'price': '\$15.00'},
      {'name': 'Item 4', 'quantity': '1', 'price': '\$15.00'},
      {'name': 'Item 4', 'quantity': '1', 'price': '\$15.00'},
      {'name': 'Item 4', 'quantity': '1', 'price': '\$15.00'},
      {'name': 'Item 4', 'quantity': '1', 'price': '\$15.00'},
      {'name': 'Item 4', 'quantity': '1', 'price': '\$15.00'},
      {'name': 'Item 4', 'quantity': '1', 'price': '\$15.00'},
      {'name': 'Item 4', 'quantity': '1', 'price': '\$15.00'},

      {'name': 'Item 4', 'quantity': '1', 'price': '\$15.00'},
      {'name': 'Item 4', 'quantity': '1', 'price': '\$15.00'},
      {'name': 'Item 4', 'quantity': '1', 'price': '\$15.00'},
      // ... add more items as needed
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: Container(
          color: Color.fromRGBO(242, 79, 4, 1),
          padding: const EdgeInsets.all(16.0),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Add any additional widgets/icons you want on the right side of the app bar
            ],
          ),
        ),
      ),
      body: Container(
        color: Color.fromRGBO(242, 79, 4, 1),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 10.0),
              const Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 60.0,
              ),
              const SizedBox(height: 20.0),
              Image.asset(
                'assets/logo.png',
                height: 80.0,
              ),
              const SizedBox(height: 20.0),
              Container(
                margin: const EdgeInsets.all(20.0),
                padding: const EdgeInsets.all(16.0),
                constraints: const BoxConstraints(
                  maxWidth: 400.0,
                  minHeight: 550.0, // Adjust the height as needed
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Order #123',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          'Date: ${DateTime.now().toString().split(' ')[0]}',
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      'Your order is being processed',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Image.asset(
                      'assets/resibo.png', // Replace with the actual path to your PNG image
                      color: Color.fromARGB(
                          255, 86, 56, 14), // Specify the desired color
                      height: 50.0, // Adjust the height as needed
                    ),
                    const SizedBox(height: 20.0),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Items',
                          style: TextStyle(
                           fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          'Quantity',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          'Price',
                          style: TextStyle(
                        fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    const Divider(height: 2.0, thickness: 2.0),
                    const SizedBox(height: 10.0),

                    // Use a fixed-sized Container for the items
                    Container(
                      height: 300.0, // Adjust the height as needed
                      child: ListView.builder(
                        itemCount: items.length,
                        itemBuilder: (context, index) => buildItemRow(
                          items[index]['name']!,
                          items[index]['quantity']!,
                          items[index]['price']!,
                        ),
                      ),
                    ),

                    const Divider(height: 2.0, thickness: 2.0),
                    const SizedBox(height: 10.0),

                    // Total section inside the dynamically adjusting container
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '\$35.00',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
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
  }
}