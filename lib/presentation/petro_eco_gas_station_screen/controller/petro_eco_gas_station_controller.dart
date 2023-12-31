import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/petro_eco_gas_station_screen/models/petro_eco_gas_station_model.dart';

/// A controller class for the PetroEcoGasStationScreen.
///
/// This class manages the state of the PetroEcoGasStationScreen, including the
/// current petroEcoGasStationModelObj
class PetroEcoGasStationController extends GetxController {
  Rx<PetroEcoGasStationModel> petroEcoGasStationModelObj =
      PetroEcoGasStationModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element
        in petroEcoGasStationModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    petroEcoGasStationModelObj.value.dropdownItemList.refresh();
  }
}
