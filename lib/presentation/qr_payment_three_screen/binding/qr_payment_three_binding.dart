import '../controller/qr_payment_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the QrPaymentThreeScreen.
///
/// This class ensures that the QrPaymentThreeController is created when the
/// QrPaymentThreeScreen is first loaded.
class QrPaymentThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QrPaymentThreeController());
  }
}
