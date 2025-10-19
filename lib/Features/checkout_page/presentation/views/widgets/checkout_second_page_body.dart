import 'package:flutter/material.dart';
import 'package:open_fashion/Core/utils/app_assets.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';
import 'package:open_fashion/Core/widgets/custom_button.dart';
import 'package:open_fashion/Core/widgets/header.dart';
import 'package:open_fashion/Features/checkout_page/data/models/order_model.dart';
import 'package:open_fashion/Features/checkout_page/presentation/views/widgets/adress_section.dart';
import 'package:open_fashion/Features/checkout_page/presentation/views/widgets/button_methods.dart';
import 'package:open_fashion/Features/checkout_page/presentation/views/widgets/total_row.dart';

class CheckoutSecondPageBody extends StatelessWidget {
  const CheckoutSecondPageBody({super.key, required this.orderModel});
  final OrderModel orderModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              spacing: 8,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Header(title: 'checkout'),
                Text("Shipping adress".toUpperCase(), style: AppStyles.bodyMedium(context)),
                orderModel.addressModel != null ? AdressSection(orderModel: orderModel) : SizedBox.shrink(),
                ButtonMethods(orderModel: orderModel),
                const Spacer(),
                TotalRow(title: 'Total:', totalPrice: orderModel.totalPrice),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
        CustomButton(title: "Place order".toUpperCase(), icon: AppAssets.iconsShoppingbag, onPressed: () {}),
      ],
    );
  }
}
