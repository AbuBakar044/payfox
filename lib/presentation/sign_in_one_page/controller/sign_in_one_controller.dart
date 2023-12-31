import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/sign_in_one_page/models/sign_in_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignInOnePage.
///
/// This class manages the state of the SignInOnePage, including the
/// current signInOneModelObj
class SignInOneController extends GetxController {
  SignInOneController(this.signInOneModelObj);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignInOneModel> signInOneModelObj;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }
}
