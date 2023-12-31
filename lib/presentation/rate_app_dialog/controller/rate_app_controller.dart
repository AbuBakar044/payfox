import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/rate_app_dialog/models/rate_app_model.dart';

/// A controller class for the RateAppDialog.
///
/// This class manages the state of the RateAppDialog, including the
/// current rateAppModelObj
class RateAppController extends GetxController {
  Rx<RateAppModel> rateAppModelObj = RateAppModel().obs;
}
