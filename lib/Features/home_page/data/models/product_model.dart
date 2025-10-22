import 'dart:convert';

import 'package:open_fashion/Core/utils/app_assets.dart';

class ProductModel {
  final String image;
  final String title;
  final String description;
  final int price;

  ProductModel({required this.image, required this.title, required this.description, required this.price});

  static List<ProductModel> products = [
    ProductModel(
      image: AppAssets.productsProduct6,
      title: "October collection",
      description: "Elegant summer dress made from soft fabric, perfect for casual outings.",
      price: 149,
    ),
    ProductModel(
      image: AppAssets.productsProduct1,
      title: "October collection",
      description: "Stylish leather ankle boots that combine comfort with timeless fashion.",
      price: 99,
    ),
    ProductModel(
      image: AppAssets.productsProduct2,
      title: "October collection",
      description: "Luxury gold-plated earrings with a modern minimalist design.",
      price: 499,
    ),
    ProductModel(
      image: AppAssets.productsProduct3,
      title: "October collection",
      description: "Sparkling diamond ring crafted with precision for a classic look.",
      price: 999,
    ),
    ProductModel(
      image: AppAssets.productsProduct4,
      title: "October collection",
      description: "Delicate gold bracelet featuring elegant chain details.",
      price: 1499,
    ),
    ProductModel(
      image: AppAssets.productsProduct5,
      title: "October collection",
      description: "Luxury bracelet set with unique textures and premium materials.",
      price: 2799,
    ),
  ];

  ProductModel copyWith({
    String? image,
    String? title,
    String? description,
    int? price,
  }) {
    return ProductModel(
      image: image ?? this.image,
      title: title ?? this.title,
      description: description ?? this.description,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'image': image,
      'title': title,
      'description': description,
      'price': price,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      image: map['image'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      price: map['price']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) => ProductModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductModel(image: $image, title: $title, description: $description, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ProductModel &&
      other.image == image &&
      other.title == title &&
      other.description == description &&
      other.price == price;
  }

  @override
  int get hashCode {
    return image.hashCode ^
      title.hashCode ^
      description.hashCode ^
      price.hashCode;
  }
}
