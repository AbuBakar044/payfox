import '../../../core/app_export.dart';/// This class is used in the [foodcomponent1_item_widget] screen.
class Foodcomponent1ItemModel {Foodcomponent1ItemModel({this.foodName, this.foodQuantity, this.sellPrice, this.purchasePrice, this.id, }) { foodName = foodName  ?? Rx("Food");foodQuantity = foodQuantity  ?? Rx("10 qty");sellPrice = sellPrice  ?? Rx("Sell: 1,200");purchasePrice = purchasePrice  ?? Rx("Purchase: 11,200");id = id  ?? Rx(""); }

Rx<String>? foodName;

Rx<String>? foodQuantity;

Rx<String>? sellPrice;

Rx<String>? purchasePrice;

Rx<String>? id;

 }
