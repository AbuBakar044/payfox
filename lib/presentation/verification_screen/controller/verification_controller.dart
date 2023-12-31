import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/verification_screen/models/verification_model.dart';

/// A controller class for the VerificationScreen.
///
/// This class manages the state of the VerificationScreen, including the
/// current verificationModelObj
class VerificationController extends GetxController {
  Rx<VerificationModel> verificationModelObj = VerificationModel().obs;
}
