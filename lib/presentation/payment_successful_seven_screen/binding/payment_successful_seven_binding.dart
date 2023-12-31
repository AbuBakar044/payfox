import '../controller/payment_successful_seven_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentSuccessfulSevenScreen.
///
/// This class ensures that the PaymentSuccessfulSevenController is created when the
/// PaymentSuccessfulSevenScreen is first loaded.
class PaymentSuccessfulSevenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentSuccessfulSevenController());
  }
}
