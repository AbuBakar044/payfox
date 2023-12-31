import '../../../core/app_export.dart';/// This class is used in the [refuelingsection_item_widget] screen.
class RefuelingsectionItemModel {RefuelingsectionItemModel({this.refuelingImage, this.refuelingText, this.id, }) { refuelingImage = refuelingImage  ?? Rx(ImageConstant.imgGasStationFuelSvgrepoCom);refuelingText = refuelingText  ?? Rx("Refueling");id = id  ?? Rx(""); }

Rx<String>? refuelingImage;

Rx<String>? refuelingText;

Rx<String>? id;

 }
