import '../../../core/app_export.dart';import 'adminviewhierarchy_item_model.dart';/// This class defines the variables used in the [admin_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AdminModel {Rx<List<AdminviewhierarchyItemModel>> adminviewhierarchyItemList = Rx([AdminviewhierarchyItemModel(customerText: "Customers".obs),AdminviewhierarchyItemModel(customerText: "Sales Analytics".obs),AdminviewhierarchyItemModel(customerText: "Inventory".obs),AdminviewhierarchyItemModel(customerText: "Transaction".obs),AdminviewhierarchyItemModel(customerText: "Product".obs),AdminviewhierarchyItemModel(customerText: "Sales Record".obs),AdminviewhierarchyItemModel(customerText: "Receipt".obs),AdminviewhierarchyItemModel(customerText: "Suppliers".obs),AdminviewhierarchyItemModel(customerText: "Report".obs)]);

 }
