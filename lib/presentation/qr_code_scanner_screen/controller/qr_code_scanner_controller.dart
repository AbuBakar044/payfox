import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/qr_code_scanner_screen/models/qr_code_scanner_model.dart';

/// A controller class for the QrCodeScannerScreen.
///
/// This class manages the state of the QrCodeScannerScreen, including the
/// current qrCodeScannerModelObj
class QrCodeScannerController extends GetxController {
  Rx<QrCodeScannerModel> qrCodeScannerModelObj = QrCodeScannerModel().obs;
}
