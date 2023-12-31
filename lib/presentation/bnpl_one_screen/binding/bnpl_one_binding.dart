import '../controller/bnpl_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BnplOneScreen.
///
/// This class ensures that the BnplOneController is created when the
/// BnplOneScreen is first loaded.
class BnplOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BnplOneController());
  }
}
