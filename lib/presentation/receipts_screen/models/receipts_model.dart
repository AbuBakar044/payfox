import 'package:abu_s_application3/data/models/selectionPopupModel/selection_popup_model.dart';import '../../../core/app_export.dart';import 'orderdetailslist_item_model.dart';/// This class defines the variables used in the [receipts_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ReceiptsModel {Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<OrderdetailslistItemModel>> orderdetailslistItemList = Rx([OrderdetailslistItemModel(orderText: "Order No: 2436HR53".obs,orderAmount: "123,000.47".obs),OrderdetailslistItemModel(orderText: "Order No: 2436HR53".obs,orderAmount: "123,000.47".obs),OrderdetailslistItemModel(orderText: "Order No: 2436HR53".obs,orderAmount: "123,000.47".obs),OrderdetailslistItemModel(orderText: "Order No: 2436HR53".obs,orderAmount: "123,000.47".obs),OrderdetailslistItemModel(orderText: "Order No: 2436HR53".obs,orderAmount: "123,000.47".obs),OrderdetailslistItemModel(orderText: "Order No: 2436HR53".obs,orderAmount: "123,000.47".obs)]);

 }
