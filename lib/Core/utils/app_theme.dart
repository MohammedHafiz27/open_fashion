import 'package:flutter/material.dart';
import 'package:open_fashion/Core/utils/app_colors.dart';

class AppTheme {
  static final darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColors.offWhite,
    appBarTheme: AppBarTheme(backgroundColor: AppColors.offWhite),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: AppColors.offWhite),
      bodyMedium: TextStyle(color: AppColors.placeholder),
      bodySmall: TextStyle(color: AppColors.primary),
    ),
  );
}
