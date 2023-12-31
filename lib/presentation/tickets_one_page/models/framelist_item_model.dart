import '../../../core/app_export.dart';/// This class is used in the [framelist_item_widget] screen.
class FramelistItemModel {FramelistItemModel({this.image, this.id, }) { image = image  ?? Rx(ImageConstant.imgImage5180x137);id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? id;

 }
