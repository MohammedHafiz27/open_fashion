import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:open_fashion/Core/utils/app_colors.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, required this.icon});
  final String title;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        minimumSize: Size(MediaQuery.sizeOf(context).width, 60),
        backgroundColor: AppColors.titleActive,
      ),
      onPressed: () {},
      child: Row(
        spacing: 16,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon == null
              ? SizedBox.shrink()
              : SvgPicture.asset(icon!, colorFilter: ColorFilter.mode(AppColors.offWhite, BlendMode.srcIn)),
          Text(title.toUpperCase(), style: AppStyles.title18(context).copyWith(color: AppColors.offWhite)),
        ],
      ),
    );
  }
}
