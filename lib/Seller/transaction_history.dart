import 'package:flutter/material.dart';

class TransactionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    'Transaction Details',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 48),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: MediaQuery.of(context).size.width - 32,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: DataTable(
                  columns: [
                    DataColumn(label: Text('Order')),
                    DataColumn(label: Text('Date')),
                    DataColumn(label: Text('')), // New column for delete buttons
                  ],
                  rows: [
                    _buildTransactionDataRow('Order #123', '23-06-08'),
                    _buildTransactionDataRow('Order #124', '23-06-09'),
                    _buildTransactionDataRow('Order #124', '23-06-09'),
                    _buildTransactionDataRow('Order #124', '23-06-09'),
                    _buildTransactionDataRow('Order #124', '23-06-09'),
                    _buildTransactionDataRow('Order #124', '23-06-09'),
                    _buildTransactionDataRow('Order #124', '23-06-09'),
                    // Add more rows as needed
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  DataRow _buildTransactionDataRow(String order, String date) {
    return DataRow(
      cells: [
        DataCell(
          Row(
            children: [
              Expanded(child: Text(order)),
            ],
          ),
        ),
        DataCell(
          Row(
            children: [
              Expanded(child: Text(date)),
            ],
          ),
        ),
        DataCell(
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
               // Pass the order information to the delete handler
            },
          ),
        ),
      ],
    );
  }

  void _handleDeleteRow(BuildContext context, String order) {
    // Add your delete row logic here using the order information
  }
}
