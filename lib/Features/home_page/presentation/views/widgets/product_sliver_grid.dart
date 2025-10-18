import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:open_fashion/Core/utils/go_route.dart';
import 'package:open_fashion/Features/home_page/data/models/product_model.dart';
import 'package:open_fashion/Features/home_page/presentation/views/widgets/grid_item_product.dart';

class ProductSliverGrid extends StatelessWidget {
  const ProductSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        childCount: ProductModel.products.length,
        (context, index) => GestureDetector(
          onTap: () => context.push(AppRoute.checkoutScreen, extra: ProductModel.products[index]),
          child: GridProductItem(productModel: ProductModel.products[index]),
        ),
      ),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        childAspectRatio: 165 / 320,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        maxCrossAxisExtent: 400,
      ),
    );
  }
}
