import '../controller/international_transactions_controller.dart';
import 'package:get/get.dart';

/// A binding class for the InternationalTransactionsScreen.
///
/// This class ensures that the InternationalTransactionsController is created when the
/// InternationalTransactionsScreen is first loaded.
class InternationalTransactionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InternationalTransactionsController());
  }
}
