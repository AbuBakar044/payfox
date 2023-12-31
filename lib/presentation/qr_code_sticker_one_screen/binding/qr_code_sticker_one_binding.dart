import '../controller/qr_code_sticker_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the QrCodeStickerOneScreen.
///
/// This class ensures that the QrCodeStickerOneController is created when the
/// QrCodeStickerOneScreen is first loaded.
class QrCodeStickerOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QrCodeStickerOneController());
  }
}
