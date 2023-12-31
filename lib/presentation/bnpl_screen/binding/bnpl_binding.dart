import '../controller/bnpl_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BnplScreen.
///
/// This class ensures that the BnplController is created when the
/// BnplScreen is first loaded.
class BnplBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BnplController());
  }
}
