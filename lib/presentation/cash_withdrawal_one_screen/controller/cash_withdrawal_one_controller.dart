import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/cash_withdrawal_one_screen/models/cash_withdrawal_one_model.dart';

/// A controller class for the CashWithdrawalOneScreen.
///
/// This class manages the state of the CashWithdrawalOneScreen, including the
/// current cashWithdrawalOneModelObj
class CashWithdrawalOneController extends GetxController {
  Rx<CashWithdrawalOneModel> cashWithdrawalOneModelObj =
      CashWithdrawalOneModel().obs;
}
