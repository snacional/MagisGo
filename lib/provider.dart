import 'package:flutter/material.dart';

class RestaurantProvider extends ChangeNotifier {
  String _name = 'Loading...';
  String _cuisine = '';
  String _imageUrl = '';

  String get name => _name;
  String get cuisine => _cuisine;
  String get imageUrl => _imageUrl;

  void setRestaurantData({required String name, required String cuisine, required String imageUrl}) {
    _name = name;
    _cuisine = cuisine;
    _imageUrl = imageUrl;
    notifyListeners();
  }
}
