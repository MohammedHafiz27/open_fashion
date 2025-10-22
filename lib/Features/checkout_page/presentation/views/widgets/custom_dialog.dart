import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:open_fashion/Core/utils/app_assets.dart';
import 'package:open_fashion/Core/utils/app_colors.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';
import 'package:open_fashion/Core/widgets/custom_button.dart';

Future<dynamic> customDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) => Dialog(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        color: AppColors.offWhite,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 16),
            Text('Order Placed!', style: AppStyles.bodyLarge(context).copyWith(color: AppColors.titleActive)),
            const SizedBox(height: 8),
            Text(
              'Your order has been placed successfully.',
              style: AppStyles.bodyMedium(context),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Icon(Icons.check_circle_outline, color: Colors.green, size: 64),
            SizedBox(height: 16),
            Text(
              'Payment ID: ${Random().nextInt(10000)}',
              style: AppStyles.bodyMedium(context),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Text('Thank you for shopping with us!', style: AppStyles.bodyMedium(context), textAlign: TextAlign.center),
            const SizedBox(height: 16),
            CustomButton(
              title: 'Back'.toUpperCase(),
              onPressed: () {
                context.pop();
              },
              icon: AppAssets.iconsShoppingbag,
            ),
          ],
        ),
      ),
    ),
  );
}
