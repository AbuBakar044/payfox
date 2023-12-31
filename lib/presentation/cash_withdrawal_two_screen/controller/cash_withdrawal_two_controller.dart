import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/cash_withdrawal_two_screen/models/cash_withdrawal_two_model.dart';

/// A controller class for the CashWithdrawalTwoScreen.
///
/// This class manages the state of the CashWithdrawalTwoScreen, including the
/// current cashWithdrawalTwoModelObj
class CashWithdrawalTwoController extends GetxController {
  Rx<CashWithdrawalTwoModel> cashWithdrawalTwoModelObj =
      CashWithdrawalTwoModel().obs;
}
