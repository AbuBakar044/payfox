import '../controller/receipts_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ReceiptsOneScreen.
///
/// This class ensures that the ReceiptsOneController is created when the
/// ReceiptsOneScreen is first loaded.
class ReceiptsOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReceiptsOneController());
  }
}
