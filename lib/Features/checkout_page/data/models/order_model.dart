import 'package:open_fashion/Features/checkout_page/data/models/address_model.dart';
import 'package:open_fashion/Features/home_page/data/models/product_model.dart';

class OrderModel {
  final ProductModel product;
  final int quantity;
  final int totalPrice;
  AddressModel? addressModel;

  OrderModel({required this.product, required this.quantity, required this.totalPrice, this.addressModel});
}
