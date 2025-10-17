import 'package:flutter/material.dart';
import 'package:open_fashion/Core/utils/app_colors.dart';

class AppTheme {
  static final darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColors.titleActive,
    appBarTheme: AppBarTheme(backgroundColor: AppColors.offWhite),
  );
}
