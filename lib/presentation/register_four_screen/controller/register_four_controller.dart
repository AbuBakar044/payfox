import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/register_four_screen/models/register_four_model.dart';

/// A controller class for the RegisterFourScreen.
///
/// This class manages the state of the RegisterFourScreen, including the
/// current registerFourModelObj
class RegisterFourController extends GetxController {
  Rx<RegisterFourModel> registerFourModelObj = RegisterFourModel().obs;
}
