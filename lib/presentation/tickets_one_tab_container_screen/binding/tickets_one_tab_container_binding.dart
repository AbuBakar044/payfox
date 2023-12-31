import '../controller/tickets_one_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TicketsOneTabContainerScreen.
///
/// This class ensures that the TicketsOneTabContainerController is created when the
/// TicketsOneTabContainerScreen is first loaded.
class TicketsOneTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TicketsOneTabContainerController());
  }
}
