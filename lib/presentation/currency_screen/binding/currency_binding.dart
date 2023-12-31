import '../controller/currency_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CurrencyScreen.
///
/// This class ensures that the CurrencyController is created when the
/// CurrencyScreen is first loaded.
class CurrencyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CurrencyController());
  }
}
