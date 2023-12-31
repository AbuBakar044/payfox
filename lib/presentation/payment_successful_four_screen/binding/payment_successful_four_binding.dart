import '../controller/payment_successful_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentSuccessfulFourScreen.
///
/// This class ensures that the PaymentSuccessfulFourController is created when the
/// PaymentSuccessfulFourScreen is first loaded.
class PaymentSuccessfulFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentSuccessfulFourController());
  }
}
