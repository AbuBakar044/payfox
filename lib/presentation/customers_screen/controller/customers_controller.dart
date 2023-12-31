import 'package:abu_s_application3/core/app_export.dart';import 'package:abu_s_application3/presentation/customers_screen/models/customers_model.dart';/// A controller class for the CustomersScreen.
///
/// This class manages the state of the CustomersScreen, including the
/// current customersModelObj
class CustomersController extends GetxController {Rx<CustomersModel> customersModelObj = CustomersModel().obs;

SelectionPopupModel? selectedDropDownValue;

onSelected(dynamic value) { for (var element in customersModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} customersModelObj.value.dropdownItemList.refresh(); } 
 }
