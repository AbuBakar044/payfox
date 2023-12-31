import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/sign_up_page/models/sign_up_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpPage.
///
/// This class manages the state of the SignUpPage, including the
/// current signUpModelObj
class SignUpController extends GetxController {
  SignUpController(this.signUpModelObj);

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignUpModel> signUpModelObj;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
  }
}
