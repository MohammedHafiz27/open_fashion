import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:open_fashion/Core/utils/app_assets.dart';
import 'package:open_fashion/Core/utils/app_colors.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';
import 'package:open_fashion/Core/widgets/custom_button.dart';
import 'package:open_fashion/Features/checkout_page/presentation/views/widgets/cart_textfield.dart';
import 'package:open_fashion/Features/checkout_page/presentation/views/widgets/checkout_item.dart';
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
        Text("checkout".toUpperCase(), style: AppStyles.title18(context).copyWith(color: AppColors.titleActive)),
        SvgPicture.asset(AppAssets.iconsLine, colorFilter: ColorFilter.mode(AppColors.titleActive, BlendMode.srcIn)),
        CheckoutItem(productModel: widget.productModel, itemCount: itemCount),
        CartTextField(hintText: 'Add Promo Code', prefixIcon: AppAssets.iconsVoucher, suffix: null),
        CartTextField(hintText: 'Delivery', prefixIcon: AppAssets.iconsDoortoDoorDelivery, suffix: "Free"),
        Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Text("EST. Total:", style: AppStyles.title18(context).copyWith(color: AppColors.titleActive)),
              Spacer(),
              ValueListenableBuilder(
                valueListenable: itemCount,
                builder: (context, value, child) => Text(
                  "\$${widget.productModel.price * value}",
                  style: AppStyles.title18(context).copyWith(color: AppColors.primary),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16),
        CustomButton(title: 'checkout'.toUpperCase(), icon: AppAssets.iconsShoppingbag),
      ],
    );
  }
}
