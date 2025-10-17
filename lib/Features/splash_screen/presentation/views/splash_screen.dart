import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:open_fashion/Core/utils/app_assets.dart';
import 'package:open_fashion/Core/utils/app_colors.dart';
import 'package:open_fashion/Core/utils/go_route.dart';
import 'package:open_fashion/Features/splash_screen/presentation/views/widgets/background_scale.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  @override
  void initState() {
    _animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 800));
    _scaleAnimation = Tween<double>(
      begin: 0.0,
      end: 6,
    ).animate(CurvedAnimation(parent: _animationController, curve: Curves.easeInOut));
    _animationController.forward();
    if (mounted) {
      _animationController.addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          context.pushReplacement(AppRoute.homeScreen);
        }
      });
    }
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        alignment: AlignmentGeometry.center,
        children: [
          BackgroundScale(scaleAnimation: _scaleAnimation),
          SvgPicture.asset(
            AppAssets.iconsLogo,
            height: 75,
            colorFilter: ColorFilter.mode(AppColors.offWhite, BlendMode.srcIn),
          ),
        ],
      ),
    );
  }
}
