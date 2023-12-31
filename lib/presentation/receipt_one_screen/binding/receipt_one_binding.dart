import '../controller/receipt_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ReceiptOneScreen.
///
/// This class ensures that the ReceiptOneController is created when the
/// ReceiptOneScreen is first loaded.
class ReceiptOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReceiptOneController());
  }
}
