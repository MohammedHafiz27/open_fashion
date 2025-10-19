import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:open_fashion/Core/utils/app_colors.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';
import 'package:open_fashion/Core/utils/go_route.dart';
import 'package:open_fashion/Features/checkout_page/data/models/order_model.dart';

class AdressSection extends StatelessWidget {
  const AdressSection({super.key, required this.orderModel});
  final OrderModel orderModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${orderModel.addressModel?.firstName} ${orderModel.addressModel?.lastName}",
            style: AppStyles.bodyLarge(context).copyWith(color: AppColors.titleActive),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(orderModel.addressModel?.address ?? "", style: AppStyles.bodyMedium(context)),
                  Text(orderModel.addressModel?.city ?? "", style: AppStyles.bodyMedium(context)),
                ],
              ),
              IconButton(
                color: AppColors.titleActive,
                iconSize: 32,
                onPressed: () {
                  context.push(AppRoute.newAddressScreen, extra: orderModel);
                },
                icon: Icon(Icons.keyboard_arrow_right_outlined),
              ),
            ],
          ),
          Text(orderModel.addressModel?.phoneNumber ?? "", style: AppStyles.bodyMedium(context)),
        ],
      ),
    );
  }
}
