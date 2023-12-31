import '../controller/done_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DoneOneScreen.
///
/// This class ensures that the DoneOneController is created when the
/// DoneOneScreen is first loaded.
class DoneOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DoneOneController());
  }
}
