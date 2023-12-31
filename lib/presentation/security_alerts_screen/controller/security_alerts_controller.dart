import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/security_alerts_screen/models/security_alerts_model.dart';

/// A controller class for the SecurityAlertsScreen.
///
/// This class manages the state of the SecurityAlertsScreen, including the
/// current securityAlertsModelObj
class SecurityAlertsController extends GetxController {
  Rx<SecurityAlertsModel> securityAlertsModelObj = SecurityAlertsModel().obs;

  Rx<bool> isSelectedSwitch = false.obs;

  Rx<bool> isSelectedSwitch1 = false.obs;

  Rx<bool> isSelectedSwitch2 = false.obs;

  Rx<bool> isSelectedSwitch3 = false.obs;

  Rx<bool> isSelectedSwitch4 = false.obs;
}
