import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:open_fashion/Core/utils/app_assets.dart';
import 'package:open_fashion/Core/utils/go_route.dart';
import 'package:open_fashion/Core/widgets/custom_button.dart';
import 'package:open_fashion/Core/widgets/header.dart';
import 'package:open_fashion/Features/checkout_page/data/models/order_model.dart';
import 'package:open_fashion/Features/checkout_page/presentation/views/widgets/cart_textfield.dart';
import 'package:open_fashion/Features/checkout_page/presentation/views/widgets/checkout_item.dart';
import 'package:open_fashion/Features/checkout_page/presentation/views/widgets/total_row.dart';
import 'package:open_fashion/Features/home_page/data/models/product_model.dart';

class CheckoutPageBody extends StatefulWidget {
  const CheckoutPageBody({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  State<CheckoutPageBody> createState() => _CheckoutPageBodyState();
}

class _CheckoutPageBodyState extends State<CheckoutPageBody> {
  ValueNotifier<int> itemCount = ValueNotifier(1);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header(title: 'checkout'),
        CheckoutItem(productModel: widget.productModel, itemCount: itemCount),
        CartTextField(hintText: 'Add Promo Code', prefixIcon: AppAssets.iconsVoucher, suffix: null),
        CartTextField(hintText: 'Delivery', prefixIcon: AppAssets.iconsDoortoDoorDelivery, suffix: "Free"),
        Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ValueListenableBuilder(
            valueListenable: itemCount,
            builder: (context, value, child) =>
                TotalRow(title: "EST. Total", totalPrice: widget.productModel.price * value),
          ),
        ),
        SizedBox(height: 16),
        CustomButton(
          title: 'checkout'.toUpperCase(),
          icon: AppAssets.iconsShoppingbag,
          onPressed: () {
            context.push(
              AppRoute.checkoutSecondScreen,
              extra: OrderModel(
                product: widget.productModel,
                quantity: itemCount.value,
                totalPrice: widget.productModel.price * itemCount.value,
              ),
            );
          },
        ),
      ],
    );
  }
}
