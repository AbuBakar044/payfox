import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/qr_payment_two_page/models/qr_payment_two_model.dart';

/// A controller class for the QrPaymentTwoPage.
///
/// This class manages the state of the QrPaymentTwoPage, including the
/// current qrPaymentTwoModelObj
class QrPaymentTwoController extends GetxController {
  QrPaymentTwoController(this.qrPaymentTwoModelObj);

  Rx<QrPaymentTwoModel> qrPaymentTwoModelObj;
}
