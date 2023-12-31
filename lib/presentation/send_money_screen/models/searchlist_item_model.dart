import '../../../core/app_export.dart';/// This class is used in the [searchlist_item_widget] screen.
class SearchlistItemModel {SearchlistItemModel({this.searchImage, this.searchText, this.id, }) { searchImage = searchImage  ?? Rx(ImageConstant.imgContrastOnprimary);searchText = searchText  ?? Rx("Search");id = id  ?? Rx(""); }

Rx<String>? searchImage;

Rx<String>? searchText;

Rx<String>? id;

 }
