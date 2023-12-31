import 'package:abu_s_application3/core/app_export.dart';import 'package:abu_s_application3/presentation/block_card_screen/models/block_card_model.dart';/// A controller class for the BlockCardScreen.
///
/// This class manages the state of the BlockCardScreen, including the
/// current blockCardModelObj
class BlockCardController extends GetxController {Rx<BlockCardModel> blockCardModelObj = BlockCardModel().obs;

SelectionPopupModel? selectedDropDownValue;

onSelected(dynamic value) { for (var element in blockCardModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} blockCardModelObj.value.dropdownItemList.refresh(); } 
 }
