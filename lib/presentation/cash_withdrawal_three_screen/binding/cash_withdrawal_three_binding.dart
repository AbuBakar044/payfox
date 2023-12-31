import '../controller/cash_withdrawal_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CashWithdrawalThreeScreen.
///
/// This class ensures that the CashWithdrawalThreeController is created when the
/// CashWithdrawalThreeScreen is first loaded.
class CashWithdrawalThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CashWithdrawalThreeController());
  }
}
