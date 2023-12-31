import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/payment_successful_two_screen/models/payment_successful_two_model.dart';

/// A controller class for the PaymentSuccessfulTwoScreen.
///
/// This class manages the state of the PaymentSuccessfulTwoScreen, including the
/// current paymentSuccessfulTwoModelObj
class PaymentSuccessfulTwoController extends GetxController {
  Rx<PaymentSuccessfulTwoModel> paymentSuccessfulTwoModelObj =
      PaymentSuccessfulTwoModel().obs;
}
