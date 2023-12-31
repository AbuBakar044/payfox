import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/create_screen/models/create_model.dart';

/// A controller class for the CreateScreen.
///
/// This class manages the state of the CreateScreen, including the
/// current createModelObj
class CreateController extends GetxController {
  Rx<CreateModel> createModelObj = CreateModel().obs;
}
