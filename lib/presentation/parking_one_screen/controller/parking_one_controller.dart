import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/parking_one_screen/models/parking_one_model.dart';

/// A controller class for the ParkingOneScreen.
///
/// This class manages the state of the ParkingOneScreen, including the
/// current parkingOneModelObj
class ParkingOneController extends GetxController {
  Rx<ParkingOneModel> parkingOneModelObj = ParkingOneModel().obs;
}
