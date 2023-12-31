import '../../../core/app_export.dart';/// This class is used in the [transactionslist_item_widget] screen.
class TransactionslistItemModel {TransactionslistItemModel({this.userImage, this.locationName, this.timestamp, this.amount, this.status, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.imgUserAmber300);locationName = locationName  ?? Rx("Naperville");timestamp = timestamp  ?? Rx("15-03-2023 08:48 am");amount = amount  ?? Rx("120,000");status = status  ?? Rx("Completed");id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? locationName;

Rx<String>? timestamp;

Rx<String>? amount;

Rx<String>? status;

Rx<String>? id;

 }
