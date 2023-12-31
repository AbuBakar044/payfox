import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/qr_code_sticker_one_screen/models/qr_code_sticker_one_model.dart';

/// A controller class for the QrCodeStickerOneScreen.
///
/// This class manages the state of the QrCodeStickerOneScreen, including the
/// current qrCodeStickerOneModelObj
class QrCodeStickerOneController extends GetxController {
  Rx<QrCodeStickerOneModel> qrCodeStickerOneModelObj =
      QrCodeStickerOneModel().obs;
}
