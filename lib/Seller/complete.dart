import 'package:flutter/material.dart';

import 'order_details.dart';

class CompleteOrderPage extends StatelessWidget {
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
                  'Complete Orders',
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
                  GestureDetector(
                    onTap: () {
                      // Navigate to a new page when the box is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsPage()),
                      );
                    },
                    child: OrderInfoBox(
                      orderNumber: '123456',
                      total: '\$200.99',
                      date: '2023-12-14',
                      time: '15:30',
                      paymentStatus: 'Paid',
                        Status: 'Complete',
                    Name: 'hanzel',
                    Contact: '211 111 444',
                      imageAsset: 'assets/burger.jpg', // Provide the image asset path
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to a new page when the box is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsPage()),
                      );
                    },
                    child: OrderInfoBox(
                      orderNumber: '789012',
                      total: '\$300.99',
                      date: '2023-12-14',
                      time: '18:45',
                      paymentStatus: 'Paid',
                      Status: 'Complete',
                    Name: 'hanzel',
                    Contact: '211 111 444',
                      imageAsset: 'assets/burger.jpg', // Provide the image asset path
                    ),
                  ),
                   GestureDetector(
                    onTap: () {
                      // Navigate to a new page when the box is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsPage()),
                      );
                    },
                    child: OrderInfoBox(
                      orderNumber: '789012',
                      total: '\$264.99',
                      date: '2023-12-14',
                      time: '18:45',
                      paymentStatus: 'Paid',
                      Status: 'Complete',
                    Name: 'hanzel',
                    Contact: '211 111 444',
                      imageAsset: 'assets/burger.jpg', // Provide the image asset path
                    ),
                  ),
                   GestureDetector(
                    onTap: () {
                      // Navigate to a new page when the box is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsPage()),
                      );
                    },
                    child: OrderInfoBox(
                      orderNumber: '789012',
                      total: '\$147.99',
                      date: '2023-12-14',
                      time: '18:45',
                      paymentStatus: 'Paid',
                     Status: 'Complete',
                    Name: 'hanzel',
                    Contact: '211 111 444',
                      imageAsset: 'assets/burger.jpg', // Provide the image asset path
                    ),
                  ),
                   GestureDetector(
                    onTap: () {
                      // Navigate to a new page when the box is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsPage()),
                      );
                    },
                    child: OrderInfoBox(
                      orderNumber: '789012',
                      total: '\$21.99',
                      date: '2023-12-14',
                      time: '18:45',
                      paymentStatus: 'Paid',
                      Status: 'Complete',
                    Name: 'hanzel',
                    Contact: '211 111 444',
                      imageAsset: 'assets/burger.jpg', // Provide the image asset path
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
  final String orderNumber;
  final String total;
  final String date;
  final String time;
   final String Name;
  final String Contact;
  final String paymentStatus;
  final String Status;
  final String imageAsset;

  OrderInfoBox({
    required this.orderNumber,
    required this.total,
    required this.date,
    required this.time,
     required this.Name,
    required this.Contact,
    required this.paymentStatus,
    required this.Status,
    required this.imageAsset,
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
                Text('Order Number: $orderNumber', style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
                SizedBox(height: 8.0),
                Text('Total: $total'),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    Icon(Icons.calendar_today),
                    SizedBox(width: 4.0),
                    Text('Date: $date'),
                    SizedBox(width: 16.0),
                    Icon(Icons.access_time),
                    SizedBox(width: 4.0),
                    Text('Time: $time'),
                  ],
                ),
                    SizedBox(height: 8.0),
                    Text('Name: $Name'),
                    SizedBox(height: 8.0),
                    Text('Phone Number: $Contact'),
                SizedBox(height: 8.0),
                Text('Payment Status: $paymentStatus'),
                SizedBox(height: 8.0),
                Text('Status: $Status'),
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
      height: 210.0,
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

