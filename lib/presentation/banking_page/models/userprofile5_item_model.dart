import '../../../core/app_export.dart';/// This class is used in the [userprofile5_item_widget] screen.
class Userprofile5ItemModel {Userprofile5ItemModel({this.lineImage, this.rectangleImage, this.noiseImage, this.mastercardImage, this.cardNumberText, this.cardHolderText, this.expiryDateText, this.expiryDateText2, this.id, }) { lineImage = lineImage  ?? Rx(ImageConstant.imgLine);rectangleImage = rectangleImage  ?? Rx(ImageConstant.imgRectangle);noiseImage = noiseImage  ?? Rx(ImageConstant.imgNoise158x285);mastercardImage = mastercardImage  ?? Rx(ImageConstant.imgMastercard);cardNumberText = cardNumberText  ?? Rx("3455 **** **** 3507");cardHolderText = cardHolderText  ?? Rx("Sarah Wegan");expiryDateText = expiryDateText  ?? Rx("02/30");expiryDateText2 = expiryDateText2  ?? Rx("02/30");id = id  ?? Rx(""); }

Rx<String>? lineImage;

Rx<String>? rectangleImage;

Rx<String>? noiseImage;

Rx<String>? mastercardImage;

Rx<String>? cardNumberText;

Rx<String>? cardHolderText;

Rx<String>? expiryDateText;

Rx<String>? expiryDateText2;

Rx<String>? id;

 }
