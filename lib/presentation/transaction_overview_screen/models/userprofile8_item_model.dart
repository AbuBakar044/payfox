import '../../../core/app_export.dart';/// This class is used in the [userprofile8_item_widget] screen.
class Userprofile8ItemModel {Userprofile8ItemModel({this.userImage, this.refuelingText, this.dateTimeText, this.amountText, this.statusText, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.imgUserAmber300);refuelingText = refuelingText  ?? Rx("Refueling");dateTimeText = dateTimeText  ?? Rx("15-03-2023 08:48 am");amountText = amountText  ?? Rx("120,000");statusText = statusText  ?? Rx("Completed");id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? refuelingText;

Rx<String>? dateTimeText;

Rx<String>? amountText;

Rx<String>? statusText;

Rx<String>? id;

 }
