import '../controller/change_pin_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChangePinScreen.
///
/// This class ensures that the ChangePinController is created when the
/// ChangePinScreen is first loaded.
class ChangePinBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChangePinController());
  }
}
