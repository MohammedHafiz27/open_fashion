import 'package:flutter/material.dart';
import 'package:open_fashion/Core/utils/app_colors.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';
import 'package:open_fashion/Features/checkout_page/data/models/order_model.dart';

class AddressForm extends StatelessWidget {
  const AddressForm({
    super.key,
    required this.orderModel,
    required this.firstNameController,
    required this.lastNameController,
    required this.addressController,
    required this.cityController,
    required this.stateController,
    required this.zipCodeController,
    required this.phoneNumberController,
  });
  final OrderModel orderModel;
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController addressController;
  final TextEditingController cityController;
  final TextEditingController stateController;
  final TextEditingController zipCodeController;
  final TextEditingController phoneNumberController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        spacing: 20,
        children: [
          Row(
            spacing: 16,
            children: [
              Expanded(
                child: AddressTextField(
                  value: orderModel.addressModel?.firstName,
                  hintText: "First Name",
                  controller: firstNameController,
                ),
              ),
              Expanded(
                child: AddressTextField(
                  value: orderModel.addressModel?.lastName,
                  hintText: "Last Name",
                  controller: lastNameController,
                ),
              ),
            ],
          ),
          AddressTextField(
            value: orderModel.addressModel?.address,
            hintText: orderModel.addressModel?.address ?? 'Address',
            controller: addressController,
          ),
          AddressTextField(
            value: orderModel.addressModel?.city,
            hintText: orderModel.addressModel?.city ?? 'City',
            controller: cityController,
          ),
          Row(
            spacing: 16,
            children: [
              Expanded(
                child: AddressTextField(
                  value: orderModel.addressModel?.state,
                  hintText: orderModel.addressModel?.state ?? 'State',
                  controller: stateController,
                ),
              ),
              Expanded(
                child: AddressTextField(
                  value: orderModel.addressModel?.zipCode,
                  hintText: orderModel.addressModel?.zipCode ?? "Zip Code",
                  keyboardType: TextInputType.number,
                  controller: zipCodeController,
                ),
              ),
            ],
          ),
          AddressTextField(
            value: orderModel.addressModel?.phoneNumber,
            hintText: orderModel.addressModel?.phoneNumber ?? 'Phone Number',
            keyboardType: TextInputType.phone,
            controller: phoneNumberController,
          ),
        ],
      ),
    );
  }
}

class AddressTextField extends StatelessWidget {
  final TextEditingController controller;
  const AddressTextField({
    super.key,
    required this.hintText,
    this.keyboardType,
    required this.controller,
    required this.value,
  });
  final String hintText;
  final TextInputType? keyboardType;
  final String? value;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      keyboardType: keyboardType,
      cursorColor: AppColors.placeholder,
      style: AppStyles.bodyLarge(context).copyWith(color: AppColors.titleActive),
      decoration: InputDecoration(
        focusColor: AppColors.placeholder,
        hintText: hintText,
        hintStyle: AppStyles.bodyMedium(context),
        focusedBorder: borderBuilder(),
        enabledBorder: borderBuilder(),
        border: borderBuilder(),
      ),
    );
  }

  UnderlineInputBorder borderBuilder() => UnderlineInputBorder(borderSide: BorderSide(color: AppColors.placeholder));
}
