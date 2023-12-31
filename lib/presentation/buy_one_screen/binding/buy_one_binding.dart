import '../controller/buy_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BuyOneScreen.
///
/// This class ensures that the BuyOneController is created when the
/// BuyOneScreen is first loaded.
class BuyOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BuyOneController());
  }
}
