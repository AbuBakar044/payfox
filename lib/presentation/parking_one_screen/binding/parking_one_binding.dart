import '../controller/parking_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ParkingOneScreen.
///
/// This class ensures that the ParkingOneController is created when the
/// ParkingOneScreen is first loaded.
class ParkingOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ParkingOneController());
  }
}
