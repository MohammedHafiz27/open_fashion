import 'package:flutter/material.dart';
import 'package:open_fashion/Core/utils/app_colors.dart';
import 'package:open_fashion/Core/widgets/custom_app_bar.dart';
import 'package:open_fashion/Features/checkout_page/data/models/order_model.dart';
import 'package:open_fashion/Features/checkout_page/presentation/views/widgets/checkout_second_page_body.dart';

class CheckoutSecondPage extends StatelessWidget {
  const CheckoutSecondPage({super.key, required this.orderModel});
  final OrderModel orderModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.offWhite,
      appBar: CustomAppBar(iconsColor: AppColors.titleActive, backgroundColor: AppColors.offWhite),
      body: CheckoutSecondPageBody(orderModel: orderModel),
    );
  }
}
