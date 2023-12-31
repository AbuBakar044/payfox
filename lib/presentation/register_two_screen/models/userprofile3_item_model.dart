import '../../../core/app_export.dart';/// This class is used in the [userprofile3_item_widget] screen.
class Userprofile3ItemModel {Userprofile3ItemModel({this.userImage, this.titleText, this.priceText, this.quantityText, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.imgToppng1);titleText = titleText  ?? Rx("Luious Vuitton Leather");priceText = priceText  ?? Rx("25,600");quantityText = quantityText  ?? Rx("1");id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? titleText;

Rx<String>? priceText;

Rx<String>? quantityText;

Rx<String>? id;

 }
