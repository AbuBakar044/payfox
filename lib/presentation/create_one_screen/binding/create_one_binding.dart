import '../controller/create_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreateOneScreen.
///
/// This class ensures that the CreateOneController is created when the
/// CreateOneScreen is first loaded.
class CreateOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateOneController());
  }
}
