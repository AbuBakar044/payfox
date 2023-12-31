import '../controller/buy_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BuyTabContainerScreen.
///
/// This class ensures that the BuyTabContainerController is created when the
/// BuyTabContainerScreen is first loaded.
class BuyTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BuyTabContainerController());
  }
}
