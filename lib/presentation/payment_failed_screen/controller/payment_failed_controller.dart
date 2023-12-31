import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/payment_failed_screen/models/payment_failed_model.dart';

/// A controller class for the PaymentFailedScreen.
///
/// This class manages the state of the PaymentFailedScreen, including the
/// current paymentFailedModelObj
class PaymentFailedController extends GetxController {
  Rx<PaymentFailedModel> paymentFailedModelObj = PaymentFailedModel().obs;
}
