import '../controller/payment_successful_six_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentSuccessfulSixScreen.
///
/// This class ensures that the PaymentSuccessfulSixController is created when the
/// PaymentSuccessfulSixScreen is first loaded.
class PaymentSuccessfulSixBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentSuccessfulSixController());
  }
}
