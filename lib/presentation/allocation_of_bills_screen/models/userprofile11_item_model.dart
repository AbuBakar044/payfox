import '../../../core/app_export.dart';/// This class is used in the [userprofile11_item_widget] screen.
class Userprofile11ItemModel {Userprofile11ItemModel({this.userImage, this.courtneyWillPayText, this.twentyText, this.amountText, this.isSelectedSwitch, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.imgEllipse1071);courtneyWillPayText = courtneyWillPayText  ?? Rx("Courtney will pay");twentyText = twentyText  ?? Rx("20%");amountText = amountText  ?? Rx("562");isSelectedSwitch = isSelectedSwitch  ?? Rx(false);id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? courtneyWillPayText;

Rx<String>? twentyText;

Rx<String>? amountText;

Rx<bool>? isSelectedSwitch;

Rx<String>? id;

 }
