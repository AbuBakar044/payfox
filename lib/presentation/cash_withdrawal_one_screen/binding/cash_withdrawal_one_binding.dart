import '../controller/cash_withdrawal_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CashWithdrawalOneScreen.
///
/// This class ensures that the CashWithdrawalOneController is created when the
/// CashWithdrawalOneScreen is first loaded.
class CashWithdrawalOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CashWithdrawalOneController());
  }
}
