import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:open_fashion/Core/utils/app_colors.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';
import 'package:open_fashion/Core/widgets/custom_app_bar.dart';
import 'package:open_fashion/Core/widgets/custom_button.dart';
import 'package:open_fashion/Core/widgets/header.dart';

class PaymentMethodPage extends StatelessWidget {
  const PaymentMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomAppBar(), body: PaymentMethodbody());
  }
}

class PaymentMethodbody extends StatefulWidget {
  const PaymentMethodbody({super.key});

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
        Header(title: "payment method".toUpperCase()),
        CreditCardWidget(
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
        CreditCardForm(
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
        Spacer(),
        CustomButton(
          title: "Add",
          icon: null,
          onPressed: () {
            if (formKey.currentState!.validate()) {
              Navigator.pop(context, creditCardModel);
            }
          },
        ),
      ],
    );
  }
}
