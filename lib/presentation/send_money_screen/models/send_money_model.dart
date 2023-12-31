import '../../../core/app_export.dart';import 'searchlist_item_model.dart';/// This class defines the variables used in the [send_money_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SendMoneyModel {Rx<List<SearchlistItemModel>> searchlistItemList = Rx([SearchlistItemModel(searchImage:ImageConstant.imgContrastOnprimary.obs,searchText: "Search".obs),SearchlistItemModel(searchText: "Christianah  Fox".obs),SearchlistItemModel(searchText: "Cody Fisher".obs)]);

 }
