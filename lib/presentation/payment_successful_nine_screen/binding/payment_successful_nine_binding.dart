import '../controller/payment_successful_nine_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentSuccessfulNineScreen.
///
/// This class ensures that the PaymentSuccessfulNineController is created when the
/// PaymentSuccessfulNineScreen is first loaded.
class PaymentSuccessfulNineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentSuccessfulNineController());
  }
}
