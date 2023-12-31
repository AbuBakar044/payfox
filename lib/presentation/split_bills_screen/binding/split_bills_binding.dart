import '../controller/split_bills_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SplitBillsScreen.
///
/// This class ensures that the SplitBillsController is created when the
/// SplitBillsScreen is first loaded.
class SplitBillsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplitBillsController());
  }
}
