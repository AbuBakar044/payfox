import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/buy_one_screen/models/buy_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the BuyOneScreen.
///
/// This class manages the state of the BuyOneScreen, including the
/// current buyOneModelObj
class BuyOneController extends GetxController {
  TextEditingController productDetailsController = TextEditingController();

  Rx<BuyOneModel> buyOneModelObj = BuyOneModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    productDetailsController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in buyOneModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    buyOneModelObj.value.dropdownItemList.refresh();
  }
}
