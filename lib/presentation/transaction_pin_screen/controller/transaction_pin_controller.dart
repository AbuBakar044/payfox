import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/transaction_pin_screen/models/transaction_pin_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TransactionPinScreen.
///
/// This class manages the state of the TransactionPinScreen, including the
/// current transactionPinModelObj
class TransactionPinController extends GetxController {
  TextEditingController passwordController = TextEditingController();

  Rx<TransactionPinModel> transactionPinModelObj = TransactionPinModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    passwordController.dispose();
  }
}
