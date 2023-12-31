import '../controller/payment_history_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentHistoryTabContainerScreen.
///
/// This class ensures that the PaymentHistoryTabContainerController is created when the
/// PaymentHistoryTabContainerScreen is first loaded.
class PaymentHistoryTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentHistoryTabContainerController());
  }
}
