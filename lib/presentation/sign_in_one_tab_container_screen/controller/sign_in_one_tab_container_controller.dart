import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/sign_in_one_tab_container_screen/models/sign_in_one_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignInOneTabContainerScreen.
///
/// This class manages the state of the SignInOneTabContainerScreen, including the
/// current signInOneTabContainerModelObj
class SignInOneTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<SignInOneTabContainerModel> signInOneTabContainerModelObj =
      SignInOneTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
