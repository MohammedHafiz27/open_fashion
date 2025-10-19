import 'package:flutter/material.dart';
import 'package:open_fashion/Core/widgets/custom_app_bar.dart';
import 'package:open_fashion/Features/checkout_page/data/models/order_model.dart';
import 'package:open_fashion/Features/checkout_page/presentation/views/widgets/checkout_second_page_body.dart';

class CheckoutSecondPage extends StatelessWidget {
  const CheckoutSecondPage({super.key, required this.orderModel});
  final OrderModel orderModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: CheckoutSecondPageBody(orderModel: orderModel),
    );
  }
}
