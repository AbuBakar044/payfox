import '../controller/atm_gallery_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AtmGalleryScreen.
///
/// This class ensures that the AtmGalleryController is created when the
/// AtmGalleryScreen is first loaded.
class AtmGalleryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AtmGalleryController());
  }
}
