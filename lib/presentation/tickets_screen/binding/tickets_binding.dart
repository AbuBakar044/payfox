import '../controller/tickets_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TicketsScreen.
///
/// This class ensures that the TicketsController is created when the
/// TicketsScreen is first loaded.
class TicketsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TicketsController());
  }
}
