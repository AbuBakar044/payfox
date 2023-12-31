import '../../../core/app_export.dart';/// This class is used in the [userprofile4_item_widget] screen.
class Userprofile4ItemModel {Userprofile4ItemModel({this.userImage, this.userName, this.userPhoneNumber, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.imgCloseAmber300);userName = userName  ?? Rx("Darrell Steward");userPhoneNumber = userPhoneNumber  ?? Rx("(808) 555-0111");id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? userName;

Rx<String>? userPhoneNumber;

Rx<String>? id;

 }
