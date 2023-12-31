import '../controller/sign_in_one_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignInOneTabContainerScreen.
///
/// This class ensures that the SignInOneTabContainerController is created when the
/// SignInOneTabContainerScreen is first loaded.
class SignInOneTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInOneTabContainerController());
  }
}
