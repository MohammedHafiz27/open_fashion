
import 'package:flutter/material.dart';
import 'package:open_fashion/Core/utils/app_colors.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';

class CustomPlaceOrderButton extends StatelessWidget {
  const CustomPlaceOrderButton({super.key, required this.title, required this.icon, required this.suffix});
  final String title;
  final IconData icon;
  final String? suffix;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(32)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Text(title, style: AppStyles.subTitle16(context).copyWith(color: AppColors.titleActive)),
            Spacer(),
            suffix == null
                ? SizedBox.shrink()
                : Text(suffix!, style: AppStyles.subTitle16(context).copyWith(color: AppColors.titleActive)),
            SizedBox(width: 16),
            Icon(icon, color: AppColors.titleActive),
          ],
        ),
      ),
    );
  }
}
