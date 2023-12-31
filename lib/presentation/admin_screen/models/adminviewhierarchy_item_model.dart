import '../../../core/app_export.dart';/// This class is used in the [adminviewhierarchy_item_widget] screen.
class AdminviewhierarchyItemModel {AdminviewhierarchyItemModel({this.customerText, this.id, }) { customerText = customerText  ?? Rx("Customers");id = id  ?? Rx(""); }

Rx<String>? customerText;

Rx<String>? id;

 }
