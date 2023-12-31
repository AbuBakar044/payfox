import '../controller/cash_withdrawal_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CashWithdrawalScreen.
///
/// This class ensures that the CashWithdrawalController is created when the
/// CashWithdrawalScreen is first loaded.
class CashWithdrawalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CashWithdrawalController());
  }
}
