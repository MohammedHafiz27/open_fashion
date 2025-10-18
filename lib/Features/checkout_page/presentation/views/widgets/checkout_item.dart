import 'package:flutter/material.dart';
import 'package:open_fashion/Core/utils/app_colors.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';
import 'package:open_fashion/Features/checkout_page/presentation/views/widgets/checkout_button.dart';
import 'package:open_fashion/Features/home_page/data/models/product_model.dart';

class CheckoutItem extends StatelessWidget {
  const CheckoutItem({super.key, required this.productModel, required this.itemCount});
  final ValueNotifier<int> itemCount;

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
      child: AspectRatio(
        aspectRatio: 313 / 140,
        child: Row(
          spacing: 16,
          children: [
            Image.asset(productModel.image, fit: BoxFit.cover),
            Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(productModel.title, style: AppStyles.bodyLarge(context).copyWith(color: AppColors.titleActive)),
                Text(productModel.description, style: AppStyles.bodyMedium(context)),
                Row(
                  children: [
                    CheckoutButton(
                      icon: Icons.remove,
                      onPressed: () {
                        if (itemCount.value > 1) {
                          itemCount.value--;
                        }
                      },
                    ),
                    ValueListenableBuilder(
                      valueListenable: itemCount,
                      builder: (context, value, child) => Text(
                        value.toString(),
                        style: AppStyles.bodyLarge(context).copyWith(color: AppColors.titleActive),
                      ),
                    ),
                    CheckoutButton(
                      icon: Icons.add_rounded,
                      onPressed: () {
                        itemCount.value++;
                      },
                    ),
                  ],
                ),
                Text("\$${productModel.price}", style: AppStyles.bodySmall(context)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
