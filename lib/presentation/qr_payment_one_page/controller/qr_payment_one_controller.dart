import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/qr_payment_one_page/models/qr_payment_one_model.dart';

/// A controller class for the QrPaymentOnePage.
///
/// This class manages the state of the QrPaymentOnePage, including the
/// current qrPaymentOneModelObj
class QrPaymentOneController extends GetxController {
  QrPaymentOneController(this.qrPaymentOneModelObj);

  Rx<QrPaymentOneModel> qrPaymentOneModelObj;
}
