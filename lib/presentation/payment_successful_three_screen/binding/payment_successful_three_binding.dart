import '../controller/payment_successful_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentSuccessfulThreeScreen.
///
/// This class ensures that the PaymentSuccessfulThreeController is created when the
/// PaymentSuccessfulThreeScreen is first loaded.
class PaymentSuccessfulThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentSuccessfulThreeController());
  }
}
