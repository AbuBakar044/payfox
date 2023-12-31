import '../controller/select_bank_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelectBankScreen.
///
/// This class ensures that the SelectBankController is created when the
/// SelectBankScreen is first loaded.
class SelectBankBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectBankController());
  }
}
