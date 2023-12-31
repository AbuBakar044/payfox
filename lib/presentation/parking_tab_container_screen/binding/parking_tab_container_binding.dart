import '../controller/parking_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ParkingTabContainerScreen.
///
/// This class ensures that the ParkingTabContainerController is created when the
/// ParkingTabContainerScreen is first loaded.
class ParkingTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ParkingTabContainerController());
  }
}
