import '../controller/create_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreateScreen.
///
/// This class ensures that the CreateController is created when the
/// CreateScreen is first loaded.
class CreateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateController());
  }
}
