import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:open_fashion/Core/utils/app_colors.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';
import 'package:open_fashion/Core/utils/go_route.dart';
import 'package:open_fashion/Features/checkout_page/data/models/order_model.dart';
import 'package:open_fashion/Features/checkout_page/presentation/views/widgets/adress_section.dart';
import 'package:open_fashion/Features/checkout_page/presentation/views/widgets/custom_place_order_button.dart';

class ButtonMethods extends StatefulWidget {
  const ButtonMethods({super.key, required this.orderModel});
  final OrderModel orderModel;

  @override
  State<ButtonMethods> createState() => _ButtonMethodsState();
}

class _ButtonMethodsState extends State<ButtonMethods> {
  late ValueNotifier<OrderModel> orderNotifier;

  @override
  void initState() {
    orderNotifier = ValueNotifier(widget.orderModel);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        widget.orderModel.addressModel == null
            ? GestureDetector(
                onTap: () {
                  context.push(AppRoute.newAddressScreen, extra: widget.orderModel);
                },
                child: const CustomPlaceOrderButton(suffix: null, title: "Add Shipping Adress", icon: Icons.add),
              )
            : AdressSection(orderModel: widget.orderModel),
        const SizedBox(height: 30),
        Text("Shipping Method".toUpperCase(), style: AppStyles.bodyMedium(context)),
        const CustomPlaceOrderButton(suffix: "Free", title: "Pickup at store", icon: Icons.keyboard_arrow_down),
        const SizedBox(height: 30),
        Text("Payment method".toUpperCase(), style: AppStyles.bodyMedium(context)),
        ValueListenableBuilder(
          valueListenable: orderNotifier,
          builder: (context, value, child) => value.paymentMethod == null
              ? GestureDetector(
                  onTap: () {
                    context.push(AppRoute.paymentMethodScreen, extra: orderNotifier);
                  },
                  child: const CustomPlaceOrderButton(
                    suffix: null,
                    title: "select payment method",
                    icon: Icons.keyboard_arrow_down,
                  ),
                )
              : Row(
                  children: [
                    Text(
                      orderNotifier.value.paymentMethod!.cardNumber.replaceRange(4, 14, ' **** ****'),
                      style: AppStyles.bodyLarge(context).copyWith(color: AppColors.titleActive),
                    ),
                  ],
                ),
        ),
        SizedBox(height: 20),
        if (widget.orderModel.addressModel != null && orderNotifier.value.paymentMethod != null)
          AspectRatio(
            aspectRatio: 313 / 175,
            child: Row(
              spacing: 16,
              children: [
                Image.asset(widget.orderModel.product.image, fit: BoxFit.cover),
                Expanded(
                  child: Column(
                    spacing: 8,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.orderModel.product.title,
                        style: AppStyles.bodyLarge(context).copyWith(color: AppColors.titleActive),
                      ),
                      Expanded(
                        child: Text(widget.orderModel.product.description, style: AppStyles.bodyMedium(context)),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Count ${widget.orderModel.quantity}", style: AppStyles.bodySmall(context)),

                          Text("Total price \$${widget.orderModel.totalPrice}", style: AppStyles.bodySmall(context)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
