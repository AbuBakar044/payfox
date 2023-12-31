import '../../../core/app_export.dart';/// This class is used in the [viewhierarchy_item_widget] screen.
class ViewhierarchyItemModel {ViewhierarchyItemModel({this.dynamicImageProp, this.dynamicTextProp, this.id, }) { dynamicImageProp = dynamicImageProp  ?? Rx(ImageConstant.imgThumbsUpOnprimary);dynamicTextProp = dynamicTextProp  ?? Rx("History");id = id  ?? Rx(""); }

Rx<String>? dynamicImageProp;

Rx<String>? dynamicTextProp;

Rx<String>? id;

 }
