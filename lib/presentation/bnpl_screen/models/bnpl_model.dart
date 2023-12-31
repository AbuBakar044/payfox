import '../../../core/app_export.dart';import 'userprofile_item_model.dart';/// This class defines the variables used in the [bnpl_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BnplModel {Rx<List<UserprofileItemModel>> userprofileItemList = Rx([UserprofileItemModel(pay30DaysAfterText: "Pay 30 days after ".obs,interestFreePaymentText: "Interest free payment".obs,contrastImage:ImageConstant.imgContrast.obs),UserprofileItemModel(pay30DaysAfterText: "Split into 4X payment".obs,interestFreePaymentText: "Interest free payment".obs,contrastImage:ImageConstant.imgCheckmarkLightGreen900.obs)]);

 }
