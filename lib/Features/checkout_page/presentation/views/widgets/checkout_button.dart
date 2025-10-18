
import 'package:flutter/material.dart';
import 'package:open_fashion/Core/utils/app_colors.dart';

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({super.key, required this.onPressed, required this.icon});
  final void Function() onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: AppColors.offWhite,
          border: Border.all(color: AppColors.placeholder),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Icon(icon, color: AppColors.titleActive),
      ),
    );
  }
}