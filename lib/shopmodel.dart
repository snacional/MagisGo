class ShopModel {
  final String name;
  final double? rating;
  final String? estimate;
  final String image;

  ShopModel({
    required this.name,
    this.rating,
    this.estimate,
    required this.image,
  });

  factory ShopModel.fromMap(Map<String, dynamic> map) {
    return ShopModel(
      name: map['Name'] ?? '',
      rating: (map['Rating'] as num?)?.toDouble(),
      estimate: map['Estimate']?.toString() ?? '',
      image: map['Image'] ?? '',
    );
  }

  static defaultShop() {
    // Implement defaultShop method if needed
  }
}
