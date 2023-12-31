import '../controller/receipts_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ReceiptsScreen.
///
/// This class ensures that the ReceiptsController is created when the
/// ReceiptsScreen is first loaded.
class ReceiptsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReceiptsController());
  }
}
