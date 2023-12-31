import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/verification_sent_screen/models/verification_sent_model.dart';

/// A controller class for the VerificationSentScreen.
///
/// This class manages the state of the VerificationSentScreen, including the
/// current verificationSentModelObj
class VerificationSentController extends GetxController {
  Rx<VerificationSentModel> verificationSentModelObj =
      VerificationSentModel().obs;
}
