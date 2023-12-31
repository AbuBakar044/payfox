import '../../../core/app_export.dart';/// This class is used in the [selectfriends_item_widget] screen.
class SelectfriendsItemModel {SelectfriendsItemModel({this.search, this.search1, this.id, }) { search = search  ?? Rx(ImageConstant.imgContrastOnprimary);search1 = search1  ?? Rx("Search");id = id  ?? Rx(""); }

Rx<String>? search;

Rx<String>? search1;

Rx<String>? id;

 }
