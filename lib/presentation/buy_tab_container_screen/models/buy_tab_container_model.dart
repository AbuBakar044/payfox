import 'tabview_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [buy_tab_container_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BuyTabContainerModel {Rx<List<TabviewItemModel>> tabviewItemList = Rx(List.generate(2,(index) => TabviewItemModel()));

 }
