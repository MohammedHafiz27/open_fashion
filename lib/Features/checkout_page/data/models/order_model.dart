import 'package:open_fashion/Features/home_page/data/models/product_model.dart';

class OrderModel {
  final ProductModel product;
  final int quantity;
  final int totalPrice;

  OrderModel({required this.product, required this.quantity, required this.totalPrice});
}
