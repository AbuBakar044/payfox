import '../controller/verification_sent_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VerificationSentScreen.
///
/// This class ensures that the VerificationSentController is created when the
/// VerificationSentScreen is first loaded.
class VerificationSentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerificationSentController());
  }
}
