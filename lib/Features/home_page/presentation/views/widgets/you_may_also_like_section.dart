
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:open_fashion/Core/utils/app_assets.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';
import 'package:open_fashion/Features/home_page/presentation/views/widgets/collection_grid.dart';

class YouMayAlsoLikeSection extends StatelessWidget {
  const YouMayAlsoLikeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "You May Also Like".toUpperCase(),
          textAlign: TextAlign.center,
          style: AppStyles.bodyLarge(context),
        ),
        SizedBox(height: 8),
        SvgPicture.asset(AppAssets.iconsLine),
        SizedBox(height: 8),
        CollectionGrid(),
      ],
    );
  }
}
