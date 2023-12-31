import 'package:abu_s_application3/data/models/selectionPopupModel/selection_popup_model.dart';import '../../../core/app_export.dart';import 'userprofile4_item_model.dart';/// This class defines the variables used in the [customers_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CustomersModel {Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<Userprofile4ItemModel>> userprofile4ItemList = Rx([Userprofile4ItemModel(userImage:ImageConstant.imgCloseAmber300.obs,userName: "Darrell Steward".obs,userPhoneNumber: "(808) 555-0111".obs),Userprofile4ItemModel(userImage:ImageConstant.imgClose.obs,userName: "Wade Warren".obs,userPhoneNumber: "(480) 555-0103".obs),Userprofile4ItemModel(userImage:ImageConstant.imgClose.obs,userName: "Cody Fisher".obs,userPhoneNumber: "(239) 555-0108".obs),Userprofile4ItemModel(userImage:ImageConstant.imgClose.obs,userName: "Wade Warren".obs,userPhoneNumber: "(480) 555-0103".obs),Userprofile4ItemModel(userImage:ImageConstant.imgClose.obs,userName: "Wade Warren".obs,userPhoneNumber: "(480) 555-0103".obs),Userprofile4ItemModel(userName: "Theresa Webb".obs,userPhoneNumber: "(671) 555-0110".obs)]);

 }
