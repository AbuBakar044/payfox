import '../controller/inventory_controller.dart';
import 'package:get/get.dart';

/// A binding class for the InventoryScreen.
///
/// This class ensures that the InventoryController is created when the
/// InventoryScreen is first loaded.
class InventoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InventoryController());
  }
}
