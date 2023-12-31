import 'viewhierarchyslider_item_model.dart';import '../../../core/app_export.dart';import 'moviedetailslist_item_model.dart';import 'framelist_item_model.dart';/// This class defines the variables used in the [tickets_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class TicketsOneModel {Rx<List<ViewhierarchysliderItemModel>> viewhierarchysliderItemList = Rx(List.generate(1,(index) => ViewhierarchysliderItemModel()));

Rx<List<MoviedetailslistItemModel>> moviedetailslistItemList = Rx([MoviedetailslistItemModel(movieImage:ImageConstant.imgImage5.obs,movieTitle: "Frozen 2".obs,ratingText: "4.6".obs,genreText: "Horror, Drama".obs),MoviedetailslistItemModel(movieImage:ImageConstant.imgImage4170x164.obs,movieTitle: "Ratu Ilmu Hitam".obs,ratingText: "4.6".obs,genreText: "Horror, Drama".obs)]);

Rx<List<FramelistItemModel>> framelistItemList = Rx([FramelistItemModel(image:ImageConstant.imgImage5180x137.obs),FramelistItemModel(image:ImageConstant.imgTheAvengers.obs),FramelistItemModel(image:ImageConstant.img8inzvcosxd3verm.obs)]);

 }
