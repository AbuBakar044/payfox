import '../controller/tickets_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TicketsTwoScreen.
///
/// This class ensures that the TicketsTwoController is created when the
/// TicketsTwoScreen is first loaded.
class TicketsTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TicketsTwoController());
  }
}
