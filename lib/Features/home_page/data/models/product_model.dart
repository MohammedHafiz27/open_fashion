import 'package:open_fashion/Core/utils/app_assets.dart';

class ProductModel {
  final String image, title, description, price;

  ProductModel({required this.image, required this.title, required this.description, required this.price});

  static List<ProductModel> products = [
    ProductModel(
      image: AppAssets.productsProduct1,
      title: "October collection",
      description: "reversible angora cardigan",
      price: r"$120",
    ),
    ProductModel(image: AppAssets.productsProduct2, title: "October collection", description: "mnemo", price: r"$120"),
    ProductModel(
      image: AppAssets.productsProduct3,
      title: "October collection",
      description: "reversible angora cardigan",
      price: r"$120",
    ),
    ProductModel(image: AppAssets.productsProduct4, title: "October collection", description: "mnemo", price: r"$120"),
    ProductModel(
      image: AppAssets.productsProduct5,
      title: "October collection",
      description: "reversible angora cardigan",
      price: r"$120",
    ),
    ProductModel(image: AppAssets.productsProduct6, title: "October collection", description: "menmo", price: r"$120"),
  ];
}
