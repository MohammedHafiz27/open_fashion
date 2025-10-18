import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:open_fashion/Core/utils/app_assets.dart';
import 'package:open_fashion/Features/home_page/presentation/views/widgets/first_image_cover.dart';
import 'package:open_fashion/Features/home_page/presentation/views/widgets/product_sliver_grid.dart';
import 'package:open_fashion/Features/home_page/presentation/views/widgets/you_may_also_like_section.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(left: 0, right: 0, top: size.height * 0.01, child: SvgPicture.asset(AppAssets.texts10)),
        Positioned(
          left: 0,
          right: 0,
          top: size.height * 0.05,
          child: Column(
            spacing: 8,
            children: [SvgPicture.asset(AppAssets.textsOctober), SvgPicture.asset(AppAssets.textsCollection)],
          ),
        ),
        Positioned.fill(
          left: 0,
          right: 0,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: SizedBox(height: 120)),
              SliverToBoxAdapter(child: FirstImageCover(size: size)),
              SliverToBoxAdapter(child: SizedBox(height: 20)),
              ProductSliverGrid(),
              SliverToBoxAdapter(child: SizedBox(height: 20)),
              SliverToBoxAdapter(child: YouMayAlsoLikeSection()),
            ],
          ),
        ),
      ],
    );
  }
}
