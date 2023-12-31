import '../controller/register_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RegisterFourScreen.
///
/// This class ensures that the RegisterFourController is created when the
/// RegisterFourScreen is first loaded.
class RegisterFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterFourController());
  }
}
