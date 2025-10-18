import 'package:flutter/material.dart';
import 'package:open_fashion/Core/utils/app_colors.dart';
import 'package:open_fashion/Core/widgets/custom_app_bar.dart';
import 'package:open_fashion/Features/checkout_page/presentation/views/widgets/checkout_page_body.dart';
import 'package:open_fashion/Features/home_page/data/models/product_model.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.offWhite,
      appBar: CustomAppBar(iconsColor: AppColors.titleActive, backgroundColor: AppColors.offWhite),
      body: CheckoutPageBody(productModel: productModel,),
    );
  }
}
