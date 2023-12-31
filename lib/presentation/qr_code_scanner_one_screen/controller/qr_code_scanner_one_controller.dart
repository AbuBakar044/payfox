import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/qr_code_scanner_one_screen/models/qr_code_scanner_one_model.dart';

/// A controller class for the QrCodeScannerOneScreen.
///
/// This class manages the state of the QrCodeScannerOneScreen, including the
/// current qrCodeScannerOneModelObj
class QrCodeScannerOneController extends GetxController {
  Rx<QrCodeScannerOneModel> qrCodeScannerOneModelObj =
      QrCodeScannerOneModel().obs;
}
