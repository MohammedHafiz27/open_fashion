import 'package:open_fashion/Core/utils/app_assets.dart';

class ProductModel {
  final String image, title, description;
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
}
