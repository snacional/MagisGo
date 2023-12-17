import 'package:flutter/material.dart';
import 'package:helloworld/receipt_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  String selectedPayment = ''; // To track the selected payment method
  TextEditingController voucherCodeController = TextEditingController();

  // Sample data, replace with actual values
  int totalItems = 18;
  double totalPrice = 2000.0; // Update the total price

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.white, // Set the background color to white
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
                // You can add additional widgets here if needed
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Order will be received by:',
                      style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(10.0),
                    width: double.infinity,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hanzel Arabia', // Replace with the actual name
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          '+69 222 555 1000', // Replace with the actual phone number
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'HanzelArabia@gmail.com', // Replace with the actual email
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(height: 16.0, thickness: 2.0),
                  const ListTile(
                    title: Text('Select Payment Method'),
                  ),
                  RadioListTile<String>(
                    title: const Text('Credit Card'),
                    value: 'Credit Card',
                    groupValue: selectedPayment,
                    onChanged: (value) {
                      setState(() {
                        selectedPayment = value!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.trailing,
                    secondary: const Icon(Icons
                        .credit_card), // Use `secondary` instead of `leading`
                    activeColor: Color.fromRGBO(242, 79, 4, 1),
                  ),
                  RadioListTile<String>(
                    title: const Text('Paypal'),
                    value: 'Paypal',
                    groupValue: selectedPayment,
                    onChanged: (value) {
                      setState(() {
                        selectedPayment = value!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.trailing,
                    secondary: Image.asset(
                      'assets/paypal.png',
                      height: 24.0, // Adjust the height as needed
                      width: 24.0, // Adjust the width as needed
                    ),
                    activeColor: Color.fromRGBO(242, 79, 4, 1),
                  ),
                  RadioListTile<String>(
                    title: const Text('Gcash'),
                    value: 'Gcash',
                    groupValue: selectedPayment,
                    onChanged: (value) {
                      setState(() {
                        selectedPayment = value!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.trailing,
                    secondary: Image.asset(
                      'assets/gcash.png',
                      height: 24.0, // Adjust the height as needed
                      width: 24.0, // Adjust the width as needed
                    ),
                    activeColor: Color.fromRGBO(242, 79, 4, 1),
                  ),
                  RadioListTile<String>(
                    title: const Text('Over the Counter'),
                    value: 'Over the Counter',
                    groupValue: selectedPayment,
                    onChanged: (value) {
                      setState(() {
                        selectedPayment = value!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.trailing,
                    secondary: const Icon(Icons.store),
                    activeColor: Color.fromRGBO(242, 79, 4, 1),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 8.0),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: TextField(
                      controller: voucherCodeController,
                      decoration: const InputDecoration(
                        hintText: 'Enter voucher code',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.grey[300],
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Display total price or any other relevant information
                    Text(
                      '18 Selected Food Items',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '\$2000.00',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Voucher:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '\$100.00',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Implement your checkout logic directly here
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ReceiptPage()),
                        );
                        print('Checkout logic here');
                        print(
                            'Typed Voucher Code: ${voucherCodeController.text}');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(242, 79, 4, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        minimumSize: const Size(400, 50.0),
                      ),
                      child: const Text('Checkout'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}