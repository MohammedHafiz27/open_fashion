import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:open_fashion/Core/utils/app_assets.dart';
import 'package:open_fashion/Core/utils/app_colors.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';
import 'package:open_fashion/Features/home_page/data/models/product_model.dart';

class GridProductItem extends StatelessWidget {
  const GridProductItem({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        Stack(
          children: [
            Image.asset(productModel.image, fit: BoxFit.cover),
            Positioned(
              bottom: 8,
              right: 8,
              child: SvgPicture.asset(
                AppAssets.iconsHeart,
                colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
              ),
            ),
          ],
        ),
        Text(productModel.title, style: AppStyles.bodyLarge(context)),
        Text(productModel.description, style: AppStyles.bodyMedium(context)),
        Text(productModel.price, style: AppStyles.bodySmall(context)),
      ],
    );
  }
}
