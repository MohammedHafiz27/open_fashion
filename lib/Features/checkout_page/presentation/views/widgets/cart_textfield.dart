import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:open_fashion/Core/utils/app_colors.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';

class CartTextField extends StatelessWidget {
  const CartTextField({super.key, required this.hintText, required this.prefixIcon, required this.suffix});
  final String hintText;
  final String prefixIcon;
  final String? suffix;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey, width: 0.5),
          bottom: BorderSide(color: Colors.grey, width: 0.5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            SvgPicture.asset(
              prefixIcon,
              width: 22,
              height: 22,
              colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: TextField(
                style: AppStyles.bodyLarge(context).copyWith(color: AppColors.titleActive),
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: AppStyles.bodyLarge(context).copyWith(color: AppColors.titleActive),
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(vertical: 14),
                ),
              ),
            ),
            Text(suffix ?? "", style: AppStyles.bodyLarge(context).copyWith(color: AppColors.titleActive)),
          ],
        ),
      ),
    );
  }
}
