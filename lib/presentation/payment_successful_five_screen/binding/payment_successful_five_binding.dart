import '../controller/payment_successful_five_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentSuccessfulFiveScreen.
///
/// This class ensures that the PaymentSuccessfulFiveController is created when the
/// PaymentSuccessfulFiveScreen is first loaded.
class PaymentSuccessfulFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentSuccessfulFiveController());
  }
}
