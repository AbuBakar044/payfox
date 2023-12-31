import '../controller/security_alerts_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SecurityAlertsScreen.
///
/// This class ensures that the SecurityAlertsController is created when the
/// SecurityAlertsScreen is first loaded.
class SecurityAlertsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SecurityAlertsController());
  }
}
