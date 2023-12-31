import '../controller/block_card_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BlockCardScreen.
///
/// This class ensures that the BlockCardController is created when the
/// BlockCardScreen is first loaded.
class BlockCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BlockCardController());
  }
}
