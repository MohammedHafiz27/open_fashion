import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ionicons/ionicons.dart';
import 'package:open_fashion/Core/utils/app_assets.dart';
import 'package:open_fashion/Core/utils/app_colors.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.offWhite,
      child: Column(
        spacing: 16,
        children: [
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Ionicons.logo_twitter, size: 24, color: AppColors.titleActive),
              Icon(Ionicons.logo_instagram, size: 24, color: AppColors.titleActive),
              Icon(Ionicons.logo_youtube, size: 24, color: AppColors.titleActive),
            ],
          ),
          SvgPicture.asset(AppAssets.iconsLine, colorFilter: ColorFilter.mode(AppColors.titleActive, BlendMode.srcIn)),
          Text("support@openui.design", style: AppStyles.bodyLarge(context).copyWith(color: AppColors.titleActive)),
          Text("+60 825 876", style: AppStyles.bodyLarge(context).copyWith(color: AppColors.titleActive)),
          Text("08:00 - 22:00 - Everyday", style: AppStyles.bodyLarge(context).copyWith(color: AppColors.titleActive)),
          SvgPicture.asset(AppAssets.iconsLine, colorFilter: ColorFilter.mode(AppColors.titleActive, BlendMode.srcIn)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("About", style: AppStyles.bodyLarge(context).copyWith(color: AppColors.titleActive)),
              Text("Contact", style: AppStyles.bodyLarge(context).copyWith(color: AppColors.titleActive)),
              Text("Blog", style: AppStyles.bodyLarge(context).copyWith(color: AppColors.titleActive)),
            ],
          ),
          Container(
            width: size.width,
            height: 40,
            color: AppColors.label,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Copyright© OpenUI All Rights Reserved.",
                style: AppStyles.bodySmall(context).copyWith(color: AppColors.offWhite),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
