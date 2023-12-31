import '../controller/receipt_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ReceiptScreen.
///
/// This class ensures that the ReceiptController is created when the
/// ReceiptScreen is first loaded.
class ReceiptBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReceiptController());
  }
}
