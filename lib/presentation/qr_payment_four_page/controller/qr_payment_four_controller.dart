import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/qr_payment_four_page/models/qr_payment_four_model.dart';

/// A controller class for the QrPaymentFourPage.
///
/// This class manages the state of the QrPaymentFourPage, including the
/// current qrPaymentFourModelObj
class QrPaymentFourController extends GetxController {
  QrPaymentFourController(this.qrPaymentFourModelObj);

  Rx<QrPaymentFourModel> qrPaymentFourModelObj;
}
