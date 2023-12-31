import '../../../core/app_export.dart';/// This class is used in the [userprofile12_item_widget] screen.
class Userprofile12ItemModel {Userprofile12ItemModel({this.companyName, this.message, this.id, }) { companyName = companyName  ?? Rx("Coco Cola LTD");message = message  ?? Rx("Kindly check through and proceed with order");id = id  ?? Rx(""); }

Rx<String>? companyName;

Rx<String>? message;

Rx<String>? id;

 }
