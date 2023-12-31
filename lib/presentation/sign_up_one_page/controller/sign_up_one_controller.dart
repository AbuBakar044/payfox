import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/sign_up_one_page/models/sign_up_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpOnePage.
///
/// This class manages the state of the SignUpOnePage, including the
/// current signUpOneModelObj
class SignUpOneController extends GetxController {
  SignUpOneController(this.signUpOneModelObj);

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignUpOneModel> signUpOneModelObj;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
  }
}
