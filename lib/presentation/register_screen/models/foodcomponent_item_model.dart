import '../../../core/app_export.dart';/// This class is used in the [foodcomponent_item_widget] screen.
class FoodcomponentItemModel {FoodcomponentItemModel({this.foodText, this.id, }) { foodText = foodText  ?? Rx("Food");id = id  ?? Rx(""); }

Rx<String>? foodText;

Rx<String>? id;

 }
