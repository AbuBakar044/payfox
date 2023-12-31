import '../../../core/app_export.dart';/// This class is used in the [gasstationlist_item_widget] screen.
class GasstationlistItemModel {GasstationlistItemModel({this.gasStationName, this.distanceText, this.distanceImage2, this.id, }) { gasStationName = gasStationName  ?? Rx("Petro Eco Gas Station");distanceText = distanceText  ?? Rx("12 Miles away");distanceImage2 = distanceImage2  ?? Rx(ImageConstant.imgVectorOnprimary);id = id  ?? Rx(""); }

Rx<String>? gasStationName;

Rx<String>? distanceText;

Rx<String>? distanceImage2;

Rx<String>? id;

 }
