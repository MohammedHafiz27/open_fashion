import 'package:flutter/material.dart';
import 'package:open_fashion/Core/widgets/custom_app_bar.dart';
import 'package:open_fashion/Features/checkout_page/presentation/views/widgets/checkout_page_body.dart';
import 'package:open_fashion/Features/home_page/data/models/product_model.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: CheckoutPageBody(productModel: productModel),
    );
  }
}
