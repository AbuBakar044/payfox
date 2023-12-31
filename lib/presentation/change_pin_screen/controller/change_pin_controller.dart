import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/change_pin_screen/models/change_pin_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ChangePinScreen.
///
/// This class manages the state of the ChangePinScreen, including the
/// current changePinModelObj
class ChangePinController extends GetxController {
  TextEditingController enternewtransactionpinvalueController =
      TextEditingController();

  TextEditingController enternewtransactionpinvalueController1 =
      TextEditingController();

  TextEditingController enternewtransactionpinvalueController2 =
      TextEditingController();

  Rx<ChangePinModel> changePinModelObj = ChangePinModel().obs;

  @override
  void onClose() {
    super.onClose();
    enternewtransactionpinvalueController.dispose();
    enternewtransactionpinvalueController1.dispose();
    enternewtransactionpinvalueController2.dispose();
  }
}
