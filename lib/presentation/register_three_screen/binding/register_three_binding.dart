import '../controller/register_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RegisterThreeScreen.
///
/// This class ensures that the RegisterThreeController is created when the
/// RegisterThreeScreen is first loaded.
class RegisterThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterThreeController());
  }
}
