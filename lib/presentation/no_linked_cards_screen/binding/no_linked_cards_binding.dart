import '../controller/no_linked_cards_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NoLinkedCardsScreen.
///
/// This class ensures that the NoLinkedCardsController is created when the
/// NoLinkedCardsScreen is first loaded.
class NoLinkedCardsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NoLinkedCardsController());
  }
}
