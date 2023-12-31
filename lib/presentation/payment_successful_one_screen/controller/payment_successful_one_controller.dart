import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/payment_successful_one_screen/models/payment_successful_one_model.dart';

/// A controller class for the PaymentSuccessfulOneScreen.
///
/// This class manages the state of the PaymentSuccessfulOneScreen, including the
/// current paymentSuccessfulOneModelObj
class PaymentSuccessfulOneController extends GetxController {
  Rx<PaymentSuccessfulOneModel> paymentSuccessfulOneModelObj =
      PaymentSuccessfulOneModel().obs;
}
