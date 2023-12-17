import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8.0),
            child: Row(
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
                  'Order Item Details',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                children: [
                  OrderInfoBox(
                  
                    itemName: 'Burger',
                    price: '\$10.99',
                    date: '2023-12-14',
                    time: '15:30',
                    
                 
                    imageAsset: 'assets/burger.jpg', // Provide the image asset path
                  ),
                  OrderInfoBox(
                   
                    itemName: 'Pizza',
                    price: '\$15.99',
                    date: '2023-12-14',
                    time: '18:45',
                  
                   
                    imageAsset: 'assets/burger.jpg', // Provide the image asset path
                  ),
                  OrderInfoBox(
                   
                    itemName: 'Sushi',
                    price: '\$20.99',
                    date: '2023-12-14',
                    time: '20:00',
                    
                    
                    imageAsset: 'assets/burger.jpg', // Provide the image asset path
                  ),
                  OrderInfoBox(
                  
                    itemName: 'Sushi',
                    price: '\$20.99',
                    date: '2023-12-14',
                    time: '20:00',
                    
                    
                    imageAsset: 'assets/burger.jpg', // Provide the image asset path
                  ),
                  OrderInfoBox(
                   
                    itemName: 'Sushi',
                    price: '\$20.99',
                    date: '2023-12-14',
                    time: '20:00',
                    
                    
                    imageAsset: 'assets/burger.jpg', // Provide the image asset path
                  ),
                  OrderInfoBox(
                    
                    itemName: 'Sushi',
                    price: '\$20.99',
                    date: '2023-12-14',
                    time: '20:00',
                    
                    
                    imageAsset: 'assets/burger.jpg', // Provide the image asset path
                  ),
                  // Add more OrderInfoBox widgets as needed
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
  
  final String itemName;
  final String price;
  final String date;
  final String time;
  
  

  final String imageAsset;

  OrderInfoBox({
    
    required this.itemName,
    required this.price,
    required this.date,
    required this.time,
   
    
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return OrderBox(
      content: [
        Row(
          children: [
            Container(
              width: 110.0, // Set a fixed width for the image
              height: 110.0, // Set a fixed height for the image
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: AssetImage(imageAsset),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 16.0), // Add spacing between image and text
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
                Text('Item: $itemName', style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                SizedBox(height: 8.0),
                Text('Price: $price'),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    Icon(Icons.calendar_today),
                    SizedBox(width: 4.0),
                    Text('Date: $date'),
                    SizedBox(width: 16.0), // Adjust the spacing between date and time
                    Icon(Icons.access_time),
                    SizedBox(width: 4.0),
                    Text('Time: $time'),
                  ],
                ),
                SizedBox(height: 8.0),
               
            
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
      height: 150.0, // Increased height to accommodate the additional content
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
