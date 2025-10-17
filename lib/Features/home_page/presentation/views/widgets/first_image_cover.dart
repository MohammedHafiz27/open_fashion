
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:open_fashion/Core/utils/app_assets.dart';

class FirstImageCover extends StatelessWidget {
  const FirstImageCover({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AppAssets.productsCover1),
        Positioned(
          right: -size.width * 0.055,
          bottom: size.height * 0.01,
          child: SvgPicture.asset(AppAssets.texts10),
        ),
      ],
    );
  }
}
