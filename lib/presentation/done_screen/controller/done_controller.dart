import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/done_screen/models/done_model.dart';

/// A controller class for the DoneScreen.
///
/// This class manages the state of the DoneScreen, including the
/// current doneModelObj
class DoneController extends GetxController {
  Rx<DoneModel> doneModelObj = DoneModel().obs;
}
