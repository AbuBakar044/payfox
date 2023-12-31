import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/payment_successful_seven_screen/models/payment_successful_seven_model.dart';

/// A controller class for the PaymentSuccessfulSevenScreen.
///
/// This class manages the state of the PaymentSuccessfulSevenScreen, including the
/// current paymentSuccessfulSevenModelObj
class PaymentSuccessfulSevenController extends GetxController {
  Rx<PaymentSuccessfulSevenModel> paymentSuccessfulSevenModelObj =
      PaymentSuccessfulSevenModel().obs;
}
