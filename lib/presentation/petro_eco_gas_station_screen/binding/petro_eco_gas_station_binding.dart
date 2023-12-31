import '../controller/petro_eco_gas_station_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PetroEcoGasStationScreen.
///
/// This class ensures that the PetroEcoGasStationController is created when the
/// PetroEcoGasStationScreen is first loaded.
class PetroEcoGasStationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PetroEcoGasStationController());
  }
}
