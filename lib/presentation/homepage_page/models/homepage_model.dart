import '../../../core/app_export.dart';import 'refuelingsection_item_model.dart';import 'userprofilesection_item_model.dart';/// This class defines the variables used in the [homepage_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomepageModel {Rx<List<RefuelingsectionItemModel>> refuelingsectionItemList = Rx([RefuelingsectionItemModel(refuelingImage:ImageConstant.imgGasStationFuelSvgrepoCom.obs,refuelingText: "Refueling".obs),RefuelingsectionItemModel(refuelingImage:ImageConstant.imgCar.obs,refuelingText: "Parking".obs),RefuelingsectionItemModel(refuelingImage:ImageConstant.imgTicketSvgrepoCom.obs,refuelingText: "Ticket purchase".obs)]);

Rx<List<UserprofilesectionItemModel>> userprofilesectionItemList = Rx([UserprofilesectionItemModel(userImage:ImageConstant.imgUserAmber300.obs,refuelingText: "Refueling".obs,refuelingDateTime: "15-03-2023 08:48 am".obs,amountText: "120,000".obs,statusText: "Completed".obs),UserprofilesectionItemModel(userImage:ImageConstant.imgClose.obs,refuelingText: "Darrell Steward".obs,refuelingDateTime: "15-03-2023 08:48 am".obs,amountText: "5,000".obs,statusText: "Completed".obs),UserprofilesectionItemModel(userImage:ImageConstant.imgUserAmber300.obs,refuelingText: "Refueling".obs,refuelingDateTime: "15-03-2023 08:48 am".obs,amountText: "10,000".obs,statusText: "Completed".obs),UserprofilesectionItemModel(userImage:ImageConstant.imgClose.obs,refuelingText: "Courtney Henry".obs,refuelingDateTime: "15-03-2023 08:48 am".obs,amountText: "5,000".obs,statusText: "Pending".obs),UserprofilesectionItemModel(refuelingText: "Parking".obs,refuelingDateTime: "15-03-2023 08:48 am".obs,amountText: "5,000".obs,statusText: "Pending".obs)]);

 }