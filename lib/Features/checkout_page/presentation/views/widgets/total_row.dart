
import 'package:flutter/material.dart';
import 'package:open_fashion/Core/utils/app_colors.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';

class TotalRow extends StatelessWidget {
  const TotalRow({super.key, required this.title, required this.totalPrice});

  final String title;
  final int totalPrice;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: AppStyles.title18(context).copyWith(color: AppColors.titleActive)),
        Spacer(),
        Text("\$$totalPrice", style: AppStyles.title18(context).copyWith(color: AppColors.primary)),
      ],
    );
  }
}
