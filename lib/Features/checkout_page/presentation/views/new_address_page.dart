import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:open_fashion/Core/widgets/custom_app_bar.dart';
import 'package:open_fashion/Core/widgets/custom_button.dart';
import 'package:open_fashion/Core/widgets/header.dart';
import 'package:open_fashion/Features/checkout_page/data/models/address_model.dart';
import 'package:open_fashion/Features/checkout_page/data/models/order_model.dart';
import 'package:open_fashion/Features/checkout_page/presentation/views/widgets/address_form.dart';

class NewAddressPage extends StatelessWidget {
  const NewAddressPage({super.key, required this.orderModel});
  final OrderModel orderModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: NewAddressPageBody(orderModel: orderModel),
    );
  }
}

class NewAddressPageBody extends StatefulWidget {
  const NewAddressPageBody({super.key, required this.orderModel});
  final OrderModel orderModel;

  @override
  State<NewAddressPageBody> createState() => _NewAddressPageBodyState();
}

class _NewAddressPageBodyState extends State<NewAddressPageBody> {
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController addressController;
  late TextEditingController cityController;
  late TextEditingController stateController;
  late TextEditingController zipCodeController;
  late TextEditingController phoneNumberController;
  @override
  void initState() {
    super.initState();

    firstNameController = TextEditingController(text: widget.orderModel.addressModel?.firstName ?? '');
    lastNameController = TextEditingController(text: widget.orderModel.addressModel?.lastName ?? '');
    addressController = TextEditingController(text: widget.orderModel.addressModel?.address ?? '');
    cityController = TextEditingController(text: widget.orderModel.addressModel?.city ?? '');
    stateController = TextEditingController(text: widget.orderModel.addressModel?.state ?? '');
    zipCodeController = TextEditingController(text: widget.orderModel.addressModel?.zipCode ?? '');
    phoneNumberController = TextEditingController(text: widget.orderModel.addressModel?.phoneNumber ?? '');
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    addressController.dispose();
    cityController.dispose();
    stateController.dispose();
    zipCodeController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header(title: "Add shipping adress"),
        AddressForm(
          orderModel: widget.orderModel,
          firstNameController: firstNameController,
          lastNameController: lastNameController,
          addressController: addressController,
          cityController: cityController,
          stateController: stateController,
          zipCodeController: zipCodeController,
          phoneNumberController: phoneNumberController,
        ),
        Spacer(),
        CustomButton(
          title: "Add now",
          icon: null,
          onPressed: () {
            AddressModel? newAddress;
            if (phoneNumberController.text.isEmpty ||
                zipCodeController.text.isEmpty ||
                stateController.text.isEmpty ||
                cityController.text.isEmpty ||
                addressController.text.isEmpty ||
                lastNameController.text.isEmpty ||
                firstNameController.text.isEmpty) {
              context.pop();
              return;
            } else {
              newAddress = AddressModel(
                firstName: firstNameController.text,
                lastName: lastNameController.text,
                address: addressController.text,
                city: cityController.text,
                state: stateController.text,
                zipCode: zipCodeController.text,
                phoneNumber: phoneNumberController.text,
              );
            }
            widget.orderModel.addressModel = newAddress;
            context.pop();
          },
        ),
      ],
    );
  }
}
