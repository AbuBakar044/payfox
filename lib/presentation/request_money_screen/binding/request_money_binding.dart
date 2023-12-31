import '../controller/request_money_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RequestMoneyScreen.
///
/// This class ensures that the RequestMoneyController is created when the
/// RequestMoneyScreen is first loaded.
class RequestMoneyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RequestMoneyController());
  }
}
