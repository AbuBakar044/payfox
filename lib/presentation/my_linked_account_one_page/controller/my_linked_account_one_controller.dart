import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/my_linked_account_one_page/models/my_linked_account_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MyLinkedAccountOnePage.
///
/// This class manages the state of the MyLinkedAccountOnePage, including the
/// current myLinkedAccountOneModelObj
class MyLinkedAccountOneController extends GetxController {
  MyLinkedAccountOneController(this.myLinkedAccountOneModelObj);

  TextEditingController nameController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController languageController = TextEditingController();

  Rx<MyLinkedAccountOneModel> myLinkedAccountOneModelObj;

  Rx<bool> checkBoxSaveCard = false.obs;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    cardNumberController.dispose();
    languageController.dispose();
  }
}
