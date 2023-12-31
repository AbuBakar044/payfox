import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/biometric_one_bottomsheet/models/biometric_one_model.dart';

/// A controller class for the BiometricOneBottomsheet.
///
/// This class manages the state of the BiometricOneBottomsheet, including the
/// current biometricOneModelObj
class BiometricOneController extends GetxController {
  Rx<BiometricOneModel> biometricOneModelObj = BiometricOneModel().obs;
}
