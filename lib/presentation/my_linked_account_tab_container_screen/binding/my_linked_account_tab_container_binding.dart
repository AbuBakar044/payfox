import '../controller/my_linked_account_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyLinkedAccountTabContainerScreen.
///
/// This class ensures that the MyLinkedAccountTabContainerController is created when the
/// MyLinkedAccountTabContainerScreen is first loaded.
class MyLinkedAccountTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyLinkedAccountTabContainerController());
  }
}
