import '../controller/tickets_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TicketsThreeScreen.
///
/// This class ensures that the TicketsThreeController is created when the
/// TicketsThreeScreen is first loaded.
class TicketsThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TicketsThreeController());
  }
}
