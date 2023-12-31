import '../../../core/app_export.dart';import 'viewhierarchy1_item_model.dart';/// This class defines the variables used in the [select_bank_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectBankModel {Rx<List<Viewhierarchy1ItemModel>> viewhierarchy1ItemList = Rx([Viewhierarchy1ItemModel(bankLogo:ImageConstant.imgWellsfargo.obs,bankName: "Wells Fargo".obs),Viewhierarchy1ItemModel(bankLogo:ImageConstant.imgLandbank.obs,bankName: "Land Bank".obs),Viewhierarchy1ItemModel(bankLogo:ImageConstant.imgHsbc.obs,bankName: "HSBC Bank".obs),Viewhierarchy1ItemModel(bankLogo:ImageConstant.imgSwedishKrona.obs,bankName: "Swedish Krona Bank".obs),Viewhierarchy1ItemModel(bankLogo:ImageConstant.imgMonzo.obs,bankName: "Monzo Bank".obs),Viewhierarchy1ItemModel(bankLogo:ImageConstant.imgJcb.obs,bankName: "JCB Bank".obs)]);

 }
