import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/account_creation_one_screen/models/account_creation_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AccountCreationOneScreen.
///
/// This class manages the state of the AccountCreationOneScreen, including the
/// current accountCreationOneModelObj
class AccountCreationOneController extends GetxController {
  TextEditingController enterDocumentNumberController = TextEditingController();

  Rx<AccountCreationOneModel> accountCreationOneModelObj =
      AccountCreationOneModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  @override
  void onClose() {
    super.onClose();
    enterDocumentNumberController.dispose();
  }

  onSelected(dynamic value) {
    for (var element
        in accountCreationOneModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    accountCreationOneModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element
        in accountCreationOneModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    accountCreationOneModelObj.value.dropdownItemList1.refresh();
  }
}
