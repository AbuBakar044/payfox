import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/bnpl_one_screen/models/bnpl_one_model.dart';

/// A controller class for the BnplOneScreen.
///
/// This class manages the state of the BnplOneScreen, including the
/// current bnplOneModelObj
class BnplOneController extends GetxController {
  Rx<BnplOneModel> bnplOneModelObj = BnplOneModel().obs;
}
