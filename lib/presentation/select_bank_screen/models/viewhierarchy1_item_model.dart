import '../../../core/app_export.dart';/// This class is used in the [viewhierarchy1_item_widget] screen.
class Viewhierarchy1ItemModel {Viewhierarchy1ItemModel({this.bankLogo, this.bankName, this.id, }) { bankLogo = bankLogo  ?? Rx(ImageConstant.imgWellsfargo);bankName = bankName  ?? Rx("Wells Fargo");id = id  ?? Rx(""); }

Rx<String>? bankLogo;

Rx<String>? bankName;

Rx<String>? id;

 }
