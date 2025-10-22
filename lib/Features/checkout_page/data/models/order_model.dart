import 'dart:convert';

import 'package:flutter/widgets.dart';

import 'package:open_fashion/Features/checkout_page/data/models/address_model.dart';
import 'package:open_fashion/Features/checkout_page/data/models/payment_method.dart';
import 'package:open_fashion/Features/home_page/data/models/product_model.dart';

class OrderModel {
  final ProductModel product;
  final int quantity;
  final int totalPrice;
  AddressModel? addressModel;
  final PaymentMethod? paymentMethod;

  OrderModel({
    required this.product,
    required this.quantity,
    required this.totalPrice,
    this.addressModel,
    this.paymentMethod,
  });

  OrderModel copyWith({
    ProductModel? product,
    int? quantity,
    int? totalPrice,
    ValueGetter<AddressModel?>? addressModel,
    ValueGetter<PaymentMethod?>? paymentMethod,
  }) {
    return OrderModel(
      product: product ?? this.product,
      quantity: quantity ?? this.quantity,
      totalPrice: totalPrice ?? this.totalPrice,
      addressModel: addressModel != null ? addressModel() : this.addressModel,
      paymentMethod: paymentMethod != null ? paymentMethod() : this.paymentMethod,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'product': product.toMap(),
      'quantity': quantity,
      'totalPrice': totalPrice,
      'addressModel': addressModel?.toMap(),
      'paymentMethod': paymentMethod?.toMap(),
    };
  }

  factory OrderModel.fromMap(Map<String, dynamic> map) {
    return OrderModel(
      product: ProductModel.fromMap(map['product']),
      quantity: map['quantity']?.toInt() ?? 0,
      totalPrice: map['totalPrice']?.toInt() ?? 0,
      addressModel: map['addressModel'] != null ? AddressModel.fromMap(map['addressModel']) : null,
      paymentMethod: map['paymentMethod'] != null ? PaymentMethod.fromMap(map['paymentMethod']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderModel.fromJson(String source) => OrderModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'OrderModel(product: $product, quantity: $quantity, totalPrice: $totalPrice, addressModel: $addressModel, paymentMethod: $paymentMethod)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is OrderModel &&
      other.product == product &&
      other.quantity == quantity &&
      other.totalPrice == totalPrice &&
      other.addressModel == addressModel &&
      other.paymentMethod == paymentMethod;
  }

  @override
  int get hashCode {
    return product.hashCode ^
      quantity.hashCode ^
      totalPrice.hashCode ^
      addressModel.hashCode ^
      paymentMethod.hashCode;
  }
}
