import '../controller/splash_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Iphone1314ThreeScreen.
///
/// This class ensures that the Iphone1314ThreeController is created when the
/// Iphone1314ThreeScreen is first loaded.
class SplashThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashThreeController());
  }
}
