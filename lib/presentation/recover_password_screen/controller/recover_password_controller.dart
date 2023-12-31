import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/recover_password_screen/models/recover_password_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the RecoverPasswordScreen.
///
/// This class manages the state of the RecoverPasswordScreen, including the
/// current recoverPasswordModelObj
class RecoverPasswordController extends GetxController {
  TextEditingController emailController = TextEditingController();

  Rx<RecoverPasswordModel> recoverPasswordModelObj = RecoverPasswordModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }
}
