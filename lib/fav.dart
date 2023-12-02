import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'MagisGO',
      home: FavoritePage(),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onBack;

  const CustomAppBar({super.key, required this.onBack});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: onBack,
          ),
          const SizedBox(width: 16.0),
          const Text(
            'Favorites',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomAppBar(
              onBack: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 16.0),
            const FoodItem(
              foodImage: 'assets/meals.png',
              foodName: 'Chicken Burger',
              rating: 4.5,
              price: '\$12.99',
            ),
            const FoodItem(
              foodImage: 'assets/meals.png',
              foodName: 'Chicken Burger',
              rating: 4.5,
              price: '\$12.99',
            ),
            const FoodItem(
              foodImage: 'assets/meals.png',
              foodName: 'Chicken Burger',
              rating: 4.5,
              price: '\$12.99',
            ),
            const FoodItem(
              foodImage: 'assets/meals.png',
              foodName: 'Chicken Burger',
              rating: 4.5,
              price: '\$12.99',
            ),
            // Add more FoodItem widgets as needed
          ],
        ),
      ),
    );
  }
}

class FoodItem extends StatelessWidget {
  final String foodImage;
  final String foodName;
  final double rating;
  final String price;
  const FoodItem({super.key, 
    required this.foodImage,
    required this.foodName,
    required this.rating,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey), // Add border here
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          // Left side: Food Image
          Container(
            width: 120.0,
            height: 120.0,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8.0),
                bottomLeft: Radius.circular(8.0),
              ),
              image: DecorationImage(
                image: AssetImage(foodImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Right side: Text
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Food Name and Favorite Icon
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        foodName,
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Favorite Icon
                      const Icon(
                        Icons.favorite,
                        color: Colors.pink,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  // Canteen Name, Star Icon, Rating, and Price
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      const SizedBox(width: 4.0),
                      Text(
                        rating.toString(),
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      const Spacer(),
                      // Star Icon and Rating
                      const SizedBox(height: 20.0),
                      const SizedBox(width: 8.0),
                      // Price
                      Text(
                        price,
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    title: 'Favorites Page',
  ));
}
