import '../controller/qr_code_scanner_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the QrCodeScannerOneScreen.
///
/// This class ensures that the QrCodeScannerOneController is created when the
/// QrCodeScannerOneScreen is first loaded.
class QrCodeScannerOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QrCodeScannerOneController());
  }
}
