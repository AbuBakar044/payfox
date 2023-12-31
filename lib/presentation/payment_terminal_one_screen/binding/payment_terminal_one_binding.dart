import '../controller/payment_terminal_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentTerminalOneScreen.
///
/// This class ensures that the PaymentTerminalOneController is created when the
/// PaymentTerminalOneScreen is first loaded.
class PaymentTerminalOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentTerminalOneController());
  }
}
