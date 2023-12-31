import '../controller/qr_payment_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the QrPaymentTabContainerScreen.
///
/// This class ensures that the QrPaymentTabContainerController is created when the
/// QrPaymentTabContainerScreen is first loaded.
class QrPaymentTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QrPaymentTabContainerController());
  }
}
