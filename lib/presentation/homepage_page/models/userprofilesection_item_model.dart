import '../../../core/app_export.dart';/// This class is used in the [userprofilesection_item_widget] screen.
class UserprofilesectionItemModel {UserprofilesectionItemModel({this.userImage, this.refuelingText, this.refuelingDateTime, this.amountText, this.statusText, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.imgUserAmber300);refuelingText = refuelingText  ?? Rx("Refueling");refuelingDateTime = refuelingDateTime  ?? Rx("15-03-2023 08:48 am");amountText = amountText  ?? Rx("120,000");statusText = statusText  ?? Rx("Completed");id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? refuelingText;

Rx<String>? refuelingDateTime;

Rx<String>? amountText;

Rx<String>? statusText;

Rx<String>? id;

 }
