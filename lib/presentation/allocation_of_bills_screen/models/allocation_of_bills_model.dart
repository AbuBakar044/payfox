import '../../../core/app_export.dart';import 'userprofile10_item_model.dart';import 'userprofile11_item_model.dart';/// This class defines the variables used in the [allocation_of_bills_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AllocationOfBillsModel {Rx<List<Userprofile10ItemModel>> userprofile10ItemList = Rx([Userprofile10ItemModel(userImage:ImageConstant.imgEllipse1071.obs,userName: "Courtney Henry".obs),Userprofile10ItemModel(userImage:ImageConstant.imgEllipse1073.obs,userName: "Alex Murphy".obs),Userprofile10ItemModel(userImage:ImageConstant.imgEllipse1075.obs,userName: "Eleanor Pena".obs),Userprofile10ItemModel(userImage:ImageConstant.imgEllipse10710.obs,userName: "Arlene McCoy".obs)]);

Rx<List<Userprofile11ItemModel>> userprofile11ItemList = Rx([Userprofile11ItemModel(userImage:ImageConstant.imgEllipse1071.obs,courtneyWillPayText: "Courtney will pay".obs,twentyText: "20%".obs,amountText: "562".obs)]);

 }
