import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/qr_payment_page/models/qr_payment_model.dart';

/// A controller class for the QrPaymentPage.
///
/// This class manages the state of the QrPaymentPage, including the
/// current qrPaymentModelObj
class QrPaymentController extends GetxController {
  QrPaymentController(this.qrPaymentModelObj);

  Rx<QrPaymentModel> qrPaymentModelObj;
}
