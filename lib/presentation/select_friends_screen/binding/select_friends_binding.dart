import '../controller/select_friends_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelectFriendsScreen.
///
/// This class ensures that the SelectFriendsController is created when the
/// SelectFriendsScreen is first loaded.
class SelectFriendsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectFriendsController());
  }
}
