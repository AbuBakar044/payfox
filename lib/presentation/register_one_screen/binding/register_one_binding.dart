import '../controller/register_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RegisterOneScreen.
///
/// This class ensures that the RegisterOneController is created when the
/// RegisterOneScreen is first loaded.
class RegisterOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterOneController());
  }
}
