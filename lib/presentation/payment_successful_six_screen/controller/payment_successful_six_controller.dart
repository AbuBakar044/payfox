import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/payment_successful_six_screen/models/payment_successful_six_model.dart';

/// A controller class for the PaymentSuccessfulSixScreen.
///
/// This class manages the state of the PaymentSuccessfulSixScreen, including the
/// current paymentSuccessfulSixModelObj
class PaymentSuccessfulSixController extends GetxController {
  Rx<PaymentSuccessfulSixModel> paymentSuccessfulSixModelObj =
      PaymentSuccessfulSixModel().obs;
}
