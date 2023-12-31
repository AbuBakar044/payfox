import '../controller/tickets_four_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TicketsFourTabContainerScreen.
///
/// This class ensures that the TicketsFourTabContainerController is created when the
/// TicketsFourTabContainerScreen is first loaded.
class TicketsFourTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TicketsFourTabContainerController());
  }
}
