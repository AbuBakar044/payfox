import '../controller/payment_successful_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentSuccessfulTwoScreen.
///
/// This class ensures that the PaymentSuccessfulTwoController is created when the
/// PaymentSuccessfulTwoScreen is first loaded.
class PaymentSuccessfulTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentSuccessfulTwoController());
  }
}
