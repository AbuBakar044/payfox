import '../../../core/app_export.dart';import 'userprofile1_item_model.dart';import 'package:abu_s_application3/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [block_card_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BlockCardModel {Rx<List<Userprofile1ItemModel>> userprofile1ItemList = Rx([Userprofile1ItemModel(cardImage7:ImageConstant.imgRectangle.obs,cardText: "3455 **** **** 3507".obs,cardImage8:ImageConstant.imgNoise.obs,userName: "Sarah Wegan".obs,userDate: "02/30".obs,cardImage9:ImageConstant.imgMastercard.obs,cardImage13:ImageConstant.imgContrastOnprimary8x8.obs)]);

Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

 }
