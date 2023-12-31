import '../../../core/app_export.dart';/// This class is used in the [orderdetails1_item_widget] screen.
class Orderdetails1ItemModel {Orderdetails1ItemModel({this.orderID, this.orderAmount, this.orderInstalment, this.orderDate, this.id, }) { orderID = orderID  ?? Rx("#GJ34JE6738-HDJ38H");orderAmount = orderAmount  ?? Rx("7,025");orderInstalment = orderInstalment  ?? Rx("(Instalment 2 out of 4)");orderDate = orderDate  ?? Rx("20 Dec 2023");id = id  ?? Rx(""); }

Rx<String>? orderID;

Rx<String>? orderAmount;

Rx<String>? orderInstalment;

Rx<String>? orderDate;

Rx<String>? id;

 }
