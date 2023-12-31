import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/payment_successful_three_screen/models/payment_successful_three_model.dart';

/// A controller class for the PaymentSuccessfulThreeScreen.
///
/// This class manages the state of the PaymentSuccessfulThreeScreen, including the
/// current paymentSuccessfulThreeModelObj
class PaymentSuccessfulThreeController extends GetxController {
  Rx<PaymentSuccessfulThreeModel> paymentSuccessfulThreeModelObj =
      PaymentSuccessfulThreeModel().obs;
}
