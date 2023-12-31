import 'package:abu_s_application3/data/models/selectionPopupModel/selection_popup_model.dart';import '../../../core/app_export.dart';import 'userprofile9_item_model.dart';/// This class defines the variables used in the [history_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HistoryModel {Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<Userprofile9ItemModel>> userprofile9ItemList = Rx([Userprofile9ItemModel(userImage:ImageConstant.imgUserAmber300.obs,locationText: "Naperville".obs,dateTimeText: "15-03-2023 08:48 am".obs,amountText: "120,000".obs,statusText: "Completed".obs),Userprofile9ItemModel(userImage:ImageConstant.imgClose.obs,locationText: "Toledo".obs,dateTimeText: "15-03-2023 08:48 am".obs,amountText: "5,000".obs,statusText: "Completed".obs),Userprofile9ItemModel(userImage:ImageConstant.imgClose.obs,locationText: "Pembroke Pines".obs,dateTimeText: "15-03-2023 08:48 am".obs,amountText: "5,000".obs,statusText: "Pending".obs),Userprofile9ItemModel(locationText: "Fairfield".obs,dateTimeText: "15-03-2023 08:48 am".obs,amountText: "5,000".obs,statusText: "Pending".obs)]);

 }
