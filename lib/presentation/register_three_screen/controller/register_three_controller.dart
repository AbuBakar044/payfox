import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/register_three_screen/models/register_three_model.dart';

/// A controller class for the RegisterThreeScreen.
///
/// This class manages the state of the RegisterThreeScreen, including the
/// current registerThreeModelObj
class RegisterThreeController extends GetxController {
  Rx<RegisterThreeModel> registerThreeModelObj = RegisterThreeModel().obs;
}
