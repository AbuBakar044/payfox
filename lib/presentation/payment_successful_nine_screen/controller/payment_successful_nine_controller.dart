import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/payment_successful_nine_screen/models/payment_successful_nine_model.dart';

/// A controller class for the PaymentSuccessfulNineScreen.
///
/// This class manages the state of the PaymentSuccessfulNineScreen, including the
/// current paymentSuccessfulNineModelObj
class PaymentSuccessfulNineController extends GetxController {
  Rx<PaymentSuccessfulNineModel> paymentSuccessfulNineModelObj =
      PaymentSuccessfulNineModel().obs;
}
