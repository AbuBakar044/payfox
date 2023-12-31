import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/register_one_screen/models/register_one_model.dart';

/// A controller class for the RegisterOneScreen.
///
/// This class manages the state of the RegisterOneScreen, including the
/// current registerOneModelObj
class RegisterOneController extends GetxController {
  Rx<RegisterOneModel> registerOneModelObj = RegisterOneModel().obs;
}
