import '../controller/payment_terminal_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentTerminalScreen.
///
/// This class ensures that the PaymentTerminalController is created when the
/// PaymentTerminalScreen is first loaded.
class PaymentTerminalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentTerminalController());
  }
}
