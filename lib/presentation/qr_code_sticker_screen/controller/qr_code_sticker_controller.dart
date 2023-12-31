import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/qr_code_sticker_screen/models/qr_code_sticker_model.dart';

/// A controller class for the QrCodeStickerScreen.
///
/// This class manages the state of the QrCodeStickerScreen, including the
/// current qrCodeStickerModelObj
class QrCodeStickerController extends GetxController {
  Rx<QrCodeStickerModel> qrCodeStickerModelObj = QrCodeStickerModel().obs;
}
