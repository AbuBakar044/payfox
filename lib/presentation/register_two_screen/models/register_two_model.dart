import '../../../core/app_export.dart';import 'userprofile3_item_model.dart';/// This class defines the variables used in the [register_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RegisterTwoModel {Rx<List<Userprofile3ItemModel>> userprofile3ItemList = Rx([Userprofile3ItemModel(userImage:ImageConstant.imgToppng1.obs,titleText: "Luious Vuitton Leather".obs,priceText: "25,600".obs,quantityText: "1".obs),Userprofile3ItemModel(userImage:ImageConstant.imgPngwing8.obs,titleText: "Luious Vuitton shoe".obs,priceText: "25,600".obs,quantityText: "1".obs),Userprofile3ItemModel(userImage:ImageConstant.imgPngwing9.obs,titleText: "Sonic Washing Machine".obs,priceText: "25,600".obs,quantityText: "1".obs),Userprofile3ItemModel(titleText: "Luious Vuitton Bag".obs,priceText: "25,600".obs,quantityText: "1".obs),Userprofile3ItemModel(titleText: "Acer Computer Monitor".obs,priceText: "25,600".obs,quantityText: "2".obs)]);

 }
