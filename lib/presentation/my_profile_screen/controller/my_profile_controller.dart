import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/my_profile_screen/models/my_profile_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MyProfileScreen.
///
/// This class manages the state of the MyProfileScreen, including the
/// current myProfileModelObj
class MyProfileController extends GetxController {
  TextEditingController nameEditTextController = TextEditingController();

  TextEditingController userNameEditTextController = TextEditingController();

  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController mobileNumberEditTextController =
      TextEditingController();

  Rx<MyProfileModel> myProfileModelObj = MyProfileModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameEditTextController.dispose();
    userNameEditTextController.dispose();
    emailEditTextController.dispose();
    mobileNumberEditTextController.dispose();
  }
}
