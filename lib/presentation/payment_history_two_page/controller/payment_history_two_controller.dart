import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/payment_history_two_page/models/payment_history_two_model.dart';

/// A controller class for the PaymentHistoryTwoPage.
///
/// This class manages the state of the PaymentHistoryTwoPage, including the
/// current paymentHistoryTwoModelObj
class PaymentHistoryTwoController extends GetxController {
  PaymentHistoryTwoController(this.paymentHistoryTwoModelObj);

  Rx<PaymentHistoryTwoModel> paymentHistoryTwoModelObj;
}
