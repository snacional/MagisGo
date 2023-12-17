import 'package:cloud_firestore/cloud_firestore.dart';

void addDataToFirestore() async {
  try {
    // Get the reference to the 'YourCollection' collection
    CollectionReference<Map<String, dynamic>> collectionReference =
        FirebaseFirestore.instance.collection('Menu');

    // Specify the document ID
    String documentId = '5';

    // Data to be added to Firestore
    Map<String, dynamic> data = {
      'Estimate': '1 min',
      'Image': 'assets/pepsi.jpg',
      'Name': 'Pepsi',
      'Price': 35,
      'Rating': 4.12,
      'Restaurant': 'Puting Bahay',
      'Type': 'Drinks',
    };

    // Add the data to Firestore with the specified document ID
    await collectionReference.doc(documentId).set(data);

    print('Data added to Firestore with custom document ID successfully.');
  } catch (e) {
    print('Error adding data to Firestore: $e');
  }
}

void main() {
  // Call the function to add data when your app starts or wherever needed
  addDataToFirestore();
}
