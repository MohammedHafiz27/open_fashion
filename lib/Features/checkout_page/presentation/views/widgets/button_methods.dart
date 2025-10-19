import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';
import 'package:open_fashion/Core/utils/go_route.dart';
import 'package:open_fashion/Features/checkout_page/data/models/order_model.dart';
import 'package:open_fashion/Features/checkout_page/presentation/views/widgets/custom_place_order_button.dart';

class ButtonMethods extends StatelessWidget {
  const ButtonMethods({super.key, required this.orderModel});
  final OrderModel orderModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        orderModel.addressModel == null
            ? GestureDetector(
                onTap: () {
                  context.push(AppRoute.newAddressScreen, extra: orderModel);
                },
                child: const CustomPlaceOrderButton(suffix: null, title: "Add Shipping Adress", icon: Icons.add),
              )
            : SizedBox.shrink(),
        const SizedBox(height: 30),
        Text("Shipping Method".toUpperCase(), style: AppStyles.bodyMedium(context)),
        GestureDetector(
          onTap: () {},
          child: const CustomPlaceOrderButton(
            suffix: "Free",
            title: "Pickup at store",
            icon: Icons.keyboard_arrow_down,
          ),
        ),
        const SizedBox(height: 30),
        Text("Payment method".toUpperCase(), style: AppStyles.bodyMedium(context)),
        GestureDetector(
          onTap: () {},
          child: const CustomPlaceOrderButton(
            suffix: null,
            title: "select payment method",
            icon: Icons.keyboard_arrow_down,
          ),
        ),
      ],
    );
  }
}
