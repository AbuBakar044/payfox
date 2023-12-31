import '../controller/write_reviews_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WriteReviewsTabContainerScreen.
///
/// This class ensures that the WriteReviewsTabContainerController is created when the
/// WriteReviewsTabContainerScreen is first loaded.
class WriteReviewsTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WriteReviewsTabContainerController());
  }
}
