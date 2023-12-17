import 'package:flutter/material.dart';


class AdjustQuantityPage extends StatefulWidget {
  @override
  _AdjustQuantityPageState createState() => _AdjustQuantityPageState();
}

class _AdjustQuantityPageState extends State<AdjustQuantityPage> {
  int currentQuantity = 1; // Initial quantity

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: Container(
          color: Colors.white, // Set the background color of the AppBar to white
          child: AppBar(
            backgroundColor: Colors.transparent, // Set the AppBar background color to transparent
            elevation: 0, // Remove the shadow below the AppBar
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.black, // Set the back button color to black
            ),
            title: Text(
              'Adjust Quantity',
              style: TextStyle(color: Colors.black), // Set the title color to black
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Current Quantity: $currentQuantity',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    // Decrease the quantity
                    setState(() {
                      currentQuantity = currentQuantity > 0 ? currentQuantity - 1 : 0;
                    });
                  },
                ),
                SizedBox(width: 16.0),
                Text(
                  '$currentQuantity',
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(width: 16.0),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    // Increase the quantity
                    setState(() {
                      currentQuantity++;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Return the adjusted quantity to the previous page
                Navigator.pop(context, currentQuantity);
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFF24F04), // Set the button color
              ),
              child: Text('Save Quantity'),
            ),
          ],
        ),
      ),
    );
  }
}
