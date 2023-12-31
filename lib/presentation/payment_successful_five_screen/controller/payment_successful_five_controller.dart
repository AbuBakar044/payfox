import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/payment_successful_five_screen/models/payment_successful_five_model.dart';

/// A controller class for the PaymentSuccessfulFiveScreen.
///
/// This class manages the state of the PaymentSuccessfulFiveScreen, including the
/// current paymentSuccessfulFiveModelObj
class PaymentSuccessfulFiveController extends GetxController {
  Rx<PaymentSuccessfulFiveModel> paymentSuccessfulFiveModelObj =
      PaymentSuccessfulFiveModel().obs;
}
