import '../controller/payment_successful_eight_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentSuccessfulEightScreen.
///
/// This class ensures that the PaymentSuccessfulEightController is created when the
/// PaymentSuccessfulEightScreen is first loaded.
class PaymentSuccessfulEightBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentSuccessfulEightController());
  }
}
