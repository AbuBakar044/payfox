import '../../../core/app_export.dart';/// This class is used in the [gasstationinfo_item_widget] screen.
class GasstationinfoItemModel {GasstationinfoItemModel({this.gasStationName, this.dateTime, this.amount, this.status, this.id, }) { gasStationName = gasStationName  ?? Rx("Petro Eco Gas Station");dateTime = dateTime  ?? Rx("15-03-2023 08:48 am");amount = amount  ?? Rx("120,000");status = status  ?? Rx("Completed");id = id  ?? Rx(""); }

Rx<String>? gasStationName;

Rx<String>? dateTime;

Rx<String>? amount;

Rx<String>? status;

Rx<String>? id;

 }
