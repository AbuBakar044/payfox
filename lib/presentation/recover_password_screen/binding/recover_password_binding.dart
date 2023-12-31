import '../controller/recover_password_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RecoverPasswordScreen.
///
/// This class ensures that the RecoverPasswordController is created when the
/// RecoverPasswordScreen is first loaded.
class RecoverPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RecoverPasswordController());
  }
}
