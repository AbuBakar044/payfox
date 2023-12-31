import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/qr_payment_three_screen/models/qr_payment_three_model.dart';

/// A controller class for the QrPaymentThreeScreen.
///
/// This class manages the state of the QrPaymentThreeScreen, including the
/// current qrPaymentThreeModelObj
class QrPaymentThreeController extends GetxController {
  Rx<QrPaymentThreeModel> qrPaymentThreeModelObj = QrPaymentThreeModel().obs;
}
