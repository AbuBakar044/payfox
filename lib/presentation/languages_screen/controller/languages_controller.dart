import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/languages_screen/models/languages_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LanguagesScreen.
///
/// This class manages the state of the LanguagesScreen, including the
/// current languagesModelObj
class LanguagesController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<LanguagesModel> languagesModelObj = LanguagesModel().obs;

  Rx<String> radioGroup = "".obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
