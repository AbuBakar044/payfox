import '../../../core/app_export.dart';/// This class is used in the [blockcard_item_widget] screen.
class BlockcardItemModel {BlockcardItemModel({this.imageClass, this.text, this.id, }) { imageClass = imageClass  ?? Rx(ImageConstant.imgThumbsUpOnprimary);text = text  ?? Rx("Block card");id = id  ?? Rx(""); }

Rx<String>? imageClass;

Rx<String>? text;

Rx<String>? id;

 }
