import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/split_bills_screen/models/split_bills_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SplitBillsScreen.
///
/// This class manages the state of the SplitBillsScreen, including the
/// current splitBillsModelObj
class SplitBillsController extends GetxController {
  TextEditingController productDetailsController = TextEditingController();

  Rx<SplitBillsModel> splitBillsModelObj = SplitBillsModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    productDetailsController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in splitBillsModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    splitBillsModelObj.value.dropdownItemList.refresh();
  }
}
