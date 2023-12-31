import '../controller/request_money_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RequestMoneyOneScreen.
///
/// This class ensures that the RequestMoneyOneController is created when the
/// RequestMoneyOneScreen is first loaded.
class RequestMoneyOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RequestMoneyOneController());
  }
}
