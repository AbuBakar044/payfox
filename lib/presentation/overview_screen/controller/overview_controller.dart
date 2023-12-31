import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/overview_screen/models/overview_model.dart';

/// A controller class for the OverviewScreen.
///
/// This class manages the state of the OverviewScreen, including the
/// current overviewModelObj
class OverviewController extends GetxController {
  Rx<OverviewModel> overviewModelObj = OverviewModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element in overviewModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    overviewModelObj.value.dropdownItemList.refresh();
  }
}
