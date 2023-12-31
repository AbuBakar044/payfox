import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/atm_gallery_one_screen/models/atm_gallery_one_model.dart';

/// A controller class for the AtmGalleryOneScreen.
///
/// This class manages the state of the AtmGalleryOneScreen, including the
/// current atmGalleryOneModelObj
class AtmGalleryOneController extends GetxController {
  Rx<AtmGalleryOneModel> atmGalleryOneModelObj = AtmGalleryOneModel().obs;
}
