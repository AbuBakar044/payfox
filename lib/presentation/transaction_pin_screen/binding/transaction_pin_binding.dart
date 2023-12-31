import '../controller/transaction_pin_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TransactionPinScreen.
///
/// This class ensures that the TransactionPinController is created when the
/// TransactionPinScreen is first loaded.
class TransactionPinBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransactionPinController());
  }
}
