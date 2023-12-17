import 'package:flutter/material.dart';

import 'cancel.dart';
import 'complete.dart';
import 'new_order.dart';
import 'order_process.dart';
import 'pickup.dart';

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/shop.png', // Adjust the path as needed
                      width: 60,
                      height: 60,
                    ),
                    const SizedBox(width: 8.0),
                    const Text(
                      "Bam-Bam's Store",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    "Orders",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  // Navigate to the page for "New Order Request"
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NewOrderRequestPage()),
                  );
                },
                child: _buildOrderBox("1", "Orders"),
              ),
              GestureDetector(
                onTap: () {
                  // Navigate to the page for "Upcoming Request"
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OrderProcessingPage()),
                  );
                },
                child: _buildOrderBox("2", "Order Processing"),
              ),
            ],
          ),
          SizedBox(height: 20), // Adjust the height based on your preference
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CancelledOrderPage()),
                  );
                },
                child: _buildOrderBox("1", "Cancelled Order"),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ReadyForPickupPage()),
                  );
                },
                child: _buildOrderBox("2", "Ready For Pickup"),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CompleteOrderPage()),
                  );
                },
                child: _buildOrderBox("2", "Completed Transactions"),
              ),
            ],
          ),
          SizedBox(height: 20), // Adjust the height based on your preference
        ],
      ),
    );
  }

  Widget _buildOrderBox(String number, String description) {
    return Container(
      width: 200, // Adjust the width based on your preference
      height: 200, // Adjust the height based on your preference
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFF24F04)),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 14.0, bottom: 24),
            child: Text(
              number,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Text(
              description,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
