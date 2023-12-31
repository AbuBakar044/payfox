import '../../../core/app_export.dart';import 'viewhierarchy_item_model.dart';import 'userprofile2_item_model.dart';/// This class defines the variables used in the [payment_terminal_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PaymentTerminalModel {Rx<List<ViewhierarchyItemModel>> viewhierarchyItemList = Rx([ViewhierarchyItemModel(dynamicImageProp:ImageConstant.imgThumbsUpOnprimary.obs,dynamicTextProp: "History".obs),ViewhierarchyItemModel(dynamicImageProp:ImageConstant.imgUserOnprimary24x24.obs,dynamicTextProp: "Last receipt".obs),ViewhierarchyItemModel(dynamicImageProp:ImageConstant.imgThumbsUpOnprimary.obs,dynamicTextProp: "Close the day".obs),ViewhierarchyItemModel(dynamicImageProp:ImageConstant.imgUserOnprimary24x24.obs,dynamicTextProp: "Overview".obs)]);

Rx<List<Userprofile2ItemModel>> userprofile2ItemList = Rx([Userprofile2ItemModel(userImage:ImageConstant.imgUserAmber300.obs,locationText: "Naperville".obs,dateTimeText: "15-03-2023 08:48 am".obs,amountText: "120,000".obs,statusText: "Completed".obs),Userprofile2ItemModel(userImage:ImageConstant.imgClose.obs,locationText: "Toledo".obs,dateTimeText: "15-03-2023 08:48 am".obs,amountText: "5,000".obs,statusText: "Completed".obs),Userprofile2ItemModel(userImage:ImageConstant.imgClose.obs,locationText: "Pembroke Pines".obs,dateTimeText: "15-03-2023 08:48 am".obs,amountText: "5,000".obs,statusText: "Pending".obs),Userprofile2ItemModel(locationText: "Fairfield".obs,dateTimeText: "15-03-2023 08:48 am".obs,amountText: "5,000".obs,statusText: "Pending".obs)]);

 }