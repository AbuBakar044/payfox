import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/atm_gallery_screen/models/atm_gallery_model.dart';

/// A controller class for the AtmGalleryScreen.
///
/// This class manages the state of the AtmGalleryScreen, including the
/// current atmGalleryModelObj
class AtmGalleryController extends GetxController {
  Rx<AtmGalleryModel> atmGalleryModelObj = AtmGalleryModel().obs;
}
