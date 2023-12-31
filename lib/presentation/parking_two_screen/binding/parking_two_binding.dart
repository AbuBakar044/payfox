import '../controller/parking_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ParkingTwoScreen.
///
/// This class ensures that the ParkingTwoController is created when the
/// ParkingTwoScreen is first loaded.
class ParkingTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ParkingTwoController());
  }
}
