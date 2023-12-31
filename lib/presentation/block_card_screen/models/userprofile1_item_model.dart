import '../../../core/app_export.dart';/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {Userprofile1ItemModel({this.cardImage7, this.cardText, this.cardImage8, this.userName, this.userDate, this.cardImage9, this.cardImage13, this.id, }) { cardImage7 = cardImage7  ?? Rx(ImageConstant.imgRectangle);cardText = cardText  ?? Rx("3455 **** **** 3507");cardImage8 = cardImage8  ?? Rx(ImageConstant.imgNoise);userName = userName  ?? Rx("Sarah Wegan");userDate = userDate  ?? Rx("02/30");cardImage9 = cardImage9  ?? Rx(ImageConstant.imgMastercard);cardImage13 = cardImage13  ?? Rx(ImageConstant.imgContrastOnprimary8x8);id = id  ?? Rx(""); }

Rx<String>? cardImage7;

Rx<String>? cardText;

Rx<String>? cardImage8;

Rx<String>? userName;

Rx<String>? userDate;

Rx<String>? cardImage9;

Rx<String>? cardImage13;

Rx<String>? id;

 }
