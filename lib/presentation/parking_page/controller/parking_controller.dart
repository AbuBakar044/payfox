import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/parking_page/models/parking_model.dart';

/// A controller class for the ParkingPage.
///
/// This class manages the state of the ParkingPage, including the
/// current parkingModelObj
class ParkingController extends GetxController {
  ParkingController(this.parkingModelObj);

  Rx<ParkingModel> parkingModelObj;
}
