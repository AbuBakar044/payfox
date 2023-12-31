import '../controller/overview_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OverviewScreen.
///
/// This class ensures that the OverviewController is created when the
/// OverviewScreen is first loaded.
class OverviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OverviewController());
  }
}
