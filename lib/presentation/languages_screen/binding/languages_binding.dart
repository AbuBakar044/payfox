import '../controller/languages_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LanguagesScreen.
///
/// This class ensures that the LanguagesController is created when the
/// LanguagesScreen is first loaded.
class LanguagesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LanguagesController());
  }
}
