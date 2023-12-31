import '../../../core/app_export.dart';import 'foodcomponent_item_model.dart';/// This class defines the variables used in the [register_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RegisterModel {Rx<List<FoodcomponentItemModel>> foodcomponentItemList = Rx([FoodcomponentItemModel(foodText: "Food".obs),FoodcomponentItemModel(foodText: "Clothing".obs),FoodcomponentItemModel(foodText: "Health".obs),FoodcomponentItemModel(foodText: "Skin care".obs),FoodcomponentItemModel(foodText: "Health".obs),FoodcomponentItemModel(foodText: "Cosmetics".obs)]);

 }
