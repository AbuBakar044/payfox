import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/sales_screen/models/sales_model.dart';

/// A controller class for the SalesScreen.
///
/// This class manages the state of the SalesScreen, including the
/// current salesModelObj
class SalesController extends GetxController {
  Rx<SalesModel> salesModelObj = SalesModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element in salesModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    salesModelObj.value.dropdownItemList.refresh();
  }
}
