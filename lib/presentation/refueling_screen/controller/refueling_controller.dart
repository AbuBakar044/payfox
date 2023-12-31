import 'package:abu_s_application3/core/app_export.dart';import 'package:abu_s_application3/presentation/refueling_screen/models/refueling_model.dart';/// A controller class for the RefuelingScreen.
///
/// This class manages the state of the RefuelingScreen, including the
/// current refuelingModelObj
class RefuelingController extends GetxController {Rx<RefuelingModel> refuelingModelObj = RefuelingModel().obs;

 }
