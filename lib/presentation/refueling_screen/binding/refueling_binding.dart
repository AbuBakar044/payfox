import '../controller/refueling_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RefuelingScreen.
///
/// This class ensures that the RefuelingController is created when the
/// RefuelingScreen is first loaded.
class RefuelingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RefuelingController());
  }
}
