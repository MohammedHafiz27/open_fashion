import 'package:flutter/material.dart';
import 'package:open_fashion/Core/utils/app_colors.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';

class AdressSection extends StatelessWidget {
  const AdressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Iris Watson", style: AppStyles.bodyLarge(context).copyWith(color: AppColors.titleActive)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("606-3727 Ullamcorper. Street", style: AppStyles.bodyMedium(context)),
                  Text("Roseville NH 11523", style: AppStyles.bodyMedium(context)),
                ],
              ),
              IconButton(
                color: AppColors.titleActive,
                iconSize: 32,
                onPressed: () {},
                icon: Icon(Icons.keyboard_arrow_right_outlined),
              ),
            ],
          ),
          Text("(786) 713-8616", style: AppStyles.bodyMedium(context)),
        ],
      ),
    );
  }
}
