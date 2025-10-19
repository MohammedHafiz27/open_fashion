import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:open_fashion/Core/utils/app_assets.dart';
import 'package:open_fashion/Core/utils/app_colors.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title.toUpperCase(), style: AppStyles.title18(context).copyWith(color: AppColors.titleActive)),
          SvgPicture.asset(AppAssets.iconsLine, colorFilter: ColorFilter.mode(AppColors.titleActive, BlendMode.srcIn)),
        ],
      ),
    );
  }
}
