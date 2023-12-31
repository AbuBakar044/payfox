import '../controller/sales_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SalesScreen.
///
/// This class ensures that the SalesController is created when the
/// SalesScreen is first loaded.
class SalesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SalesController());
  }
}
