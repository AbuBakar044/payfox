import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/biometric_bottomsheet/models/biometric_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the BiometricBottomsheet.
///
/// This class manages the state of the BiometricBottomsheet, including the
/// current biometricModelObj
class BiometricController extends GetxController {
  TextEditingController transactionPinController = TextEditingController();

  Rx<BiometricModel> biometricModelObj = BiometricModel().obs;

  @override
  void onClose() {
    super.onClose();
    transactionPinController.dispose();
  }
}
