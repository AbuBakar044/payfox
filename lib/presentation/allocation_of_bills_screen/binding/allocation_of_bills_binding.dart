import '../controller/allocation_of_bills_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AllocationOfBillsScreen.
///
/// This class ensures that the AllocationOfBillsController is created when the
/// AllocationOfBillsScreen is first loaded.
class AllocationOfBillsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AllocationOfBillsController());
  }
}
