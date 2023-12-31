import 'package:abu_s_application3/data/models/selectionPopupModel/selection_popup_model.dart';import 'chipviewframe_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [tickets_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TicketsModel {Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<ChipviewframeItemModel>> chipviewframeItemList = Rx(List.generate(3,(index) =>ChipviewframeItemModel()));

 }
