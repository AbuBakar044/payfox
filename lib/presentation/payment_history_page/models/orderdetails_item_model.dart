import '../../../core/app_export.dart';/// This class is used in the [orderdetails_item_widget] screen.
class OrderdetailsItemModel {OrderdetailsItemModel({this.orderNumber, this.orderAmount, this.instalmentInfo, this.deliveryDate, this.id, }) { orderNumber = orderNumber  ?? Rx("#GJ34JE6738-HDJ38H");orderAmount = orderAmount  ?? Rx("7,025");instalmentInfo = instalmentInfo  ?? Rx("(Instalment 2 out of 4)");deliveryDate = deliveryDate  ?? Rx("20 Dec 2023");id = id  ?? Rx(""); }

Rx<String>? orderNumber;

Rx<String>? orderAmount;

Rx<String>? instalmentInfo;

Rx<String>? deliveryDate;

Rx<String>? id;

 }
