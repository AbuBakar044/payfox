import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/pin_screen/models/pin_model.dart';

/// A controller class for the PinScreen.
///
/// This class manages the state of the PinScreen, including the
/// current pinModelObj
class PinController extends GetxController {
  Rx<PinModel> pinModelObj = PinModel().obs;
}
