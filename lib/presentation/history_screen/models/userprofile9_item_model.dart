import '../../../core/app_export.dart';/// This class is used in the [userprofile9_item_widget] screen.
class Userprofile9ItemModel {Userprofile9ItemModel({this.userImage, this.locationText, this.dateTimeText, this.amountText, this.statusText, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.imgUserAmber300);locationText = locationText  ?? Rx("Naperville");dateTimeText = dateTimeText  ?? Rx("15-03-2023 08:48 am");amountText = amountText  ?? Rx("120,000");statusText = statusText  ?? Rx("Completed");id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? locationText;

Rx<String>? dateTimeText;

Rx<String>? amountText;

Rx<String>? statusText;

Rx<String>? id;

 }
