import '../controller/transaction_overview_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TransactionOverviewScreen.
///
/// This class ensures that the TransactionOverviewController is created when the
/// TransactionOverviewScreen is first loaded.
class TransactionOverviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransactionOverviewController());
  }
}
