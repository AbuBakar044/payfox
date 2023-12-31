import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/cash_withdrawal_three_screen/models/cash_withdrawal_three_model.dart';

/// A controller class for the CashWithdrawalThreeScreen.
///
/// This class manages the state of the CashWithdrawalThreeScreen, including the
/// current cashWithdrawalThreeModelObj
class CashWithdrawalThreeController extends GetxController {
  Rx<CashWithdrawalThreeModel> cashWithdrawalThreeModelObj =
      CashWithdrawalThreeModel().obs;
}
