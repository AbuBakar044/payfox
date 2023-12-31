import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/done_one_screen/models/done_one_model.dart';

/// A controller class for the DoneOneScreen.
///
/// This class manages the state of the DoneOneScreen, including the
/// current doneOneModelObj
class DoneOneController extends GetxController {
  Rx<DoneOneModel> doneOneModelObj = DoneOneModel().obs;
}
