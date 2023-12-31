import '../controller/splash_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Iphone1314FourScreen.
///
/// This class ensures that the Iphone1314FourController is created when the
/// Iphone1314FourScreen is first loaded.
class SplashFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashFourController());
  }
}
