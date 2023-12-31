import '../controller/atm_gallery_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AtmGalleryOneScreen.
///
/// This class ensures that the AtmGalleryOneController is created when the
/// AtmGalleryOneScreen is first loaded.
class AtmGalleryOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AtmGalleryOneController());
  }
}
