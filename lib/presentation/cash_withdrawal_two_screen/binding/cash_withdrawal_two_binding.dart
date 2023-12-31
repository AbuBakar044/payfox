import '../controller/cash_withdrawal_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CashWithdrawalTwoScreen.
///
/// This class ensures that the CashWithdrawalTwoController is created when the
/// CashWithdrawalTwoScreen is first loaded.
class CashWithdrawalTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CashWithdrawalTwoController());
  }
}
