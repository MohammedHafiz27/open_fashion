import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:open_fashion/Core/utils/app_colors.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';
import 'package:open_fashion/Core/widgets/custom_app_bar.dart';
import 'package:open_fashion/Core/widgets/custom_button.dart';
import 'package:open_fashion/Core/widgets/header.dart';
import 'package:open_fashion/Features/checkout_page/data/models/order_model.dart';
import 'package:open_fashion/Features/checkout_page/data/models/payment_method.dart';

class PaymentMethodPage extends StatelessWidget {
  const PaymentMethodPage({super.key, required this.orderNotifier});
  final ValueNotifier<OrderModel> orderNotifier;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: PaymentMethodbody(orderNotifier: orderNotifier),
    );
  }
}

class PaymentMethodbody extends StatefulWidget {
  const PaymentMethodbody({super.key, required this.orderNotifier});
  final ValueNotifier<OrderModel> orderNotifier;

  @override
  State<PaymentMethodbody> createState() => _PaymentMethodbodyState();
}

class _PaymentMethodbodyState extends State<PaymentMethodbody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  CreditCardModel creditCardModel = CreditCardModel('', '', '', '', false);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: Header(title: "payment method".toUpperCase())),
              SliverToBoxAdapter(
                child: CreditCardWidget(
                  isChipVisible: true,
                  isHolderNameVisible: true,
                  cardBgColor: AppColors.titleActive,
                  cardNumber: creditCardModel.cardNumber,
                  expiryDate: creditCardModel.expiryDate,
                  cardHolderName: creditCardModel.cardHolderName,
                  cvvCode: creditCardModel.cvvCode,
                  showBackView: creditCardModel.isCvvFocused,
                  onCreditCardWidgetChange: (brand) {},
                ),
              ),
              SliverToBoxAdapter(
                child: CreditCardForm(
                  expiryDateValidator: (value) => value!.isEmpty ? 'Expiry Date is required' : null,
                  cardNumberValidator: (value) => value!.isEmpty ? 'Card Number is required' : null,
                  cvvValidator: (value) => value!.isEmpty ? 'CVV is required' : null,
                  cardHolderValidator: (value) => value!.isEmpty ? 'Card Holder Name is required' : null,
                  inputConfiguration: InputConfiguration(
                    cardHolderTextStyle: AppStyles.bodyLarge(context).copyWith(color: AppColors.titleActive),
                    cardNumberTextStyle: AppStyles.bodyLarge(context).copyWith(color: AppColors.titleActive),
                    expiryDateTextStyle: AppStyles.bodyLarge(context).copyWith(color: AppColors.titleActive),
                    cvvCodeTextStyle: AppStyles.bodyLarge(context).copyWith(color: AppColors.titleActive),
                  ),
                  cardNumber: creditCardModel.cardNumber,
                  expiryDate: creditCardModel.expiryDate,
                  cardHolderName: creditCardModel.cardHolderName,
                  cvvCode: creditCardModel.cvvCode,
                  onCreditCardModelChange: (value) {
                    setState(() {
                      creditCardModel.cardNumber = value.cardNumber;
                      creditCardModel.expiryDate = value.expiryDate;
                      creditCardModel.cardHolderName = value.cardHolderName;
                      creditCardModel.cvvCode = value.cvvCode;
                      creditCardModel.isCvvFocused = value.isCvvFocused;
                    });
                  },
                  formKey: formKey,
                ),
              ),
              SliverFillRemaining(hasScrollBody: false, child: Expanded(child: SizedBox())),
            ],
          ),
        ),
        CustomButton(
          title: "Add",
          icon: null,
          onPressed: () {
            if (formKey.currentState!.validate()) {
              widget.orderNotifier.value = widget.orderNotifier.value.copyWith(
                paymentMethod: () => PaymentMethod(
                  cardHolderName: creditCardModel.cardHolderName,
                  cardNumber: creditCardModel.cardNumber,
                  cvvCode: creditCardModel.cvvCode,
                  expiryDate: creditCardModel.expiryDate,
                ),
              );

              Navigator.pop(context);
            }
          },
        ),
      ],
    );
  }
}
