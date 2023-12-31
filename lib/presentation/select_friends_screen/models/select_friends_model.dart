import '../../../core/app_export.dart';import 'selectfriends_item_model.dart';/// This class defines the variables used in the [select_friends_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectFriendsModel {Rx<List<SelectfriendsItemModel>> selectfriendsItemList = Rx([SelectfriendsItemModel(search:ImageConstant.imgContrastOnprimary.obs,search1: "Search".obs),SelectfriendsItemModel(search1: "Christianah  Fox".obs),SelectfriendsItemModel(search1: "Cody Fisher".obs),SelectfriendsItemModel(search1: "Eleanor Pena".obs),SelectfriendsItemModel(search1: "Dianne Russell".obs),SelectfriendsItemModel(search1: "Devon Lane".obs),SelectfriendsItemModel(search1: "Courtney Henry".obs),SelectfriendsItemModel(search1: "Ralph Edwards".obs)]);

 }
