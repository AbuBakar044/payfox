import '../controller/register_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RegisterTwoScreen.
///
/// This class ensures that the RegisterTwoController is created when the
/// RegisterTwoScreen is first loaded.
class RegisterTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterTwoController());
  }
}
