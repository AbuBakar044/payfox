import 'package:abu_s_application3/core/app_export.dart';import 'package:abu_s_application3/presentation/receipts_screen/models/receipts_model.dart';/// A controller class for the ReceiptsScreen.
///
/// This class manages the state of the ReceiptsScreen, including the
/// current receiptsModelObj
class ReceiptsController extends GetxController {Rx<ReceiptsModel> receiptsModelObj = ReceiptsModel().obs;

SelectionPopupModel? selectedDropDownValue;

onSelected(dynamic value) { for (var element in receiptsModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} receiptsModelObj.value.dropdownItemList.refresh(); } 
 }
