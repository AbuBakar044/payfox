import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/payment_successful_eight_screen/models/payment_successful_eight_model.dart';

/// A controller class for the PaymentSuccessfulEightScreen.
///
/// This class manages the state of the PaymentSuccessfulEightScreen, including the
/// current paymentSuccessfulEightModelObj
class PaymentSuccessfulEightController extends GetxController {
  Rx<PaymentSuccessfulEightModel> paymentSuccessfulEightModelObj =
      PaymentSuccessfulEightModel().obs;
}
