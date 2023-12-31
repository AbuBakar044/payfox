import '../controller/qr_code_scanner_controller.dart';
import 'package:get/get.dart';

/// A binding class for the QrCodeScannerScreen.
///
/// This class ensures that the QrCodeScannerController is created when the
/// QrCodeScannerScreen is first loaded.
class QrCodeScannerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QrCodeScannerController());
  }
}
