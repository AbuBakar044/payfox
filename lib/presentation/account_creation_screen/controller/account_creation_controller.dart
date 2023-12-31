import 'package:abu_s_application3/core/app_export.dart';import 'package:abu_s_application3/presentation/account_creation_screen/models/account_creation_model.dart';import 'package:flutter/material.dart';/// A controller class for the AccountCreationScreen.
///
/// This class manages the state of the AccountCreationScreen, including the
/// current accountCreationModelObj
class AccountCreationController extends GetxController {TextEditingController fullNameController = TextEditingController();

TextEditingController addressController = TextEditingController();

Rx<AccountCreationModel> accountCreationModelObj = AccountCreationModel().obs;

@override void onClose() { super.onClose(); fullNameController.dispose(); addressController.dispose(); } 
 }
