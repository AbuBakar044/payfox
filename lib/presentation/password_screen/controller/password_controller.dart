import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/password_screen/models/password_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the PasswordScreen.
///
/// This class manages the state of the PasswordScreen, including the
/// current passwordModelObj
class PasswordController extends GetxController {
  TextEditingController passwordController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController newpasswordController1 = TextEditingController();

  Rx<PasswordModel> passwordModelObj = PasswordModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> isShowPassword1 = true.obs;

  Rx<bool> isShowPassword2 = true.obs;

  @override
  void onClose() {
    super.onClose();
    passwordController.dispose();
    newpasswordController.dispose();
    newpasswordController1.dispose();
  }
}
