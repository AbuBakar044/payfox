import '../../../core/app_export.dart';/// This class is used in the [orderdetailslist_item_widget] screen.
class OrderdetailslistItemModel {OrderdetailslistItemModel({this.orderText, this.orderAmount, this.id, }) { orderText = orderText  ?? Rx("Order No: 2436HR53");orderAmount = orderAmount  ?? Rx("123,000.47");id = id  ?? Rx(""); }

Rx<String>? orderText;

Rx<String>? orderAmount;

Rx<String>? id;

 }
