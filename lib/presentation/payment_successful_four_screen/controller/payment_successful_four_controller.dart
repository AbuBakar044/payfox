import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/payment_successful_four_screen/models/payment_successful_four_model.dart';

/// A controller class for the PaymentSuccessfulFourScreen.
///
/// This class manages the state of the PaymentSuccessfulFourScreen, including the
/// current paymentSuccessfulFourModelObj
class PaymentSuccessfulFourController extends GetxController {
  Rx<PaymentSuccessfulFourModel> paymentSuccessfulFourModelObj =
      PaymentSuccessfulFourModel().obs;
}
