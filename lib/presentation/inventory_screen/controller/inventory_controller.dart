import 'package:abu_s_application3/core/app_export.dart';import 'package:abu_s_application3/presentation/inventory_screen/models/inventory_model.dart';/// A controller class for the InventoryScreen.
///
/// This class manages the state of the InventoryScreen, including the
/// current inventoryModelObj
class InventoryController extends GetxController {Rx<InventoryModel> inventoryModelObj = InventoryModel().obs;

 }
