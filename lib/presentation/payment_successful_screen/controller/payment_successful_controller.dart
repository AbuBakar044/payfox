import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/payment_successful_screen/models/payment_successful_model.dart';

/// A controller class for the PaymentSuccessfulScreen.
///
/// This class manages the state of the PaymentSuccessfulScreen, including the
/// current paymentSuccessfulModelObj
class PaymentSuccessfulController extends GetxController {
  Rx<PaymentSuccessfulModel> paymentSuccessfulModelObj =
      PaymentSuccessfulModel().obs;
}
