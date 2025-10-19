import 'package:flutter/material.dart';
import 'package:open_fashion/Core/utils/app_colors.dart';
import 'package:open_fashion/Core/widgets/custom_app_bar.dart';
import 'package:open_fashion/Features/home_page/presentation/views/widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.titleActive,
      appBar: CustomAppBar(iconsColor: AppColors.offWhite, backgroundColor: AppColors.titleActive),
      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 8), child: HomePageBody()),
    );
  }
}
