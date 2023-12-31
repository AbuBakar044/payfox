import '../../../core/app_export.dart';/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {UserprofileItemModel({this.pay30DaysAfterText, this.interestFreePaymentText, this.contrastImage, this.id, }) { pay30DaysAfterText = pay30DaysAfterText  ?? Rx("Pay 30 days after ");interestFreePaymentText = interestFreePaymentText  ?? Rx("Interest free payment");contrastImage = contrastImage  ?? Rx(ImageConstant.imgContrast);id = id  ?? Rx(""); }

Rx<String>? pay30DaysAfterText;

Rx<String>? interestFreePaymentText;

Rx<String>? contrastImage;

Rx<String>? id;

 }
