import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:open_fashion/Core/utils/app_assets.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, this.backgroundColor, required this.iconsColor});
  final Color? backgroundColor;
  final Color iconsColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: backgroundColor,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(AppAssets.iconsMenu, colorFilter: ColorFilter.mode(iconsColor, BlendMode.srcIn)),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppAssets.iconsSearch, colorFilter: ColorFilter.mode(iconsColor, BlendMode.srcIn)),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            AppAssets.iconsShoppingbag,
            colorFilter: ColorFilter.mode(iconsColor, BlendMode.srcIn),
          ),
        ),
      ],
      title: SvgPicture.asset(AppAssets.iconsLogo, colorFilter: ColorFilter.mode(iconsColor, BlendMode.srcIn)),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
