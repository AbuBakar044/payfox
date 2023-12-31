import '../controller/block_card_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BlockCardOneScreen.
///
/// This class ensures that the BlockCardOneController is created when the
/// BlockCardOneScreen is first loaded.
class BlockCardOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BlockCardOneController());
  }
}
