import '../controller/qr_code_sticker_controller.dart';
import 'package:get/get.dart';

/// A binding class for the QrCodeStickerScreen.
///
/// This class ensures that the QrCodeStickerController is created when the
/// QrCodeStickerScreen is first loaded.
class QrCodeStickerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QrCodeStickerController());
  }
}
