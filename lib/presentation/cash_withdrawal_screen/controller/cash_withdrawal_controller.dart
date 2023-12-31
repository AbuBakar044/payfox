import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/cash_withdrawal_screen/models/cash_withdrawal_model.dart';

/// A controller class for the CashWithdrawalScreen.
///
/// This class manages the state of the CashWithdrawalScreen, including the
/// current cashWithdrawalModelObj
class CashWithdrawalController extends GetxController {
  Rx<CashWithdrawalModel> cashWithdrawalModelObj = CashWithdrawalModel().obs;
}
