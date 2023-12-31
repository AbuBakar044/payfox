import '../controller/customers_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CustomersScreen.
///
/// This class ensures that the CustomersController is created when the
/// CustomersScreen is first loaded.
class CustomersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CustomersController());
  }
}
