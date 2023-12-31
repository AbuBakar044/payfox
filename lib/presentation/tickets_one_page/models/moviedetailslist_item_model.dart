import '../../../core/app_export.dart';/// This class is used in the [moviedetailslist_item_widget] screen.
class MoviedetailslistItemModel {MoviedetailslistItemModel({this.movieImage, this.movieTitle, this.ratingText, this.genreText, this.id, }) { movieImage = movieImage  ?? Rx(ImageConstant.imgImage5);movieTitle = movieTitle  ?? Rx("Frozen 2");ratingText = ratingText  ?? Rx("4.6");genreText = genreText  ?? Rx("Horror, Drama");id = id  ?? Rx(""); }

Rx<String>? movieImage;

Rx<String>? movieTitle;

Rx<String>? ratingText;

Rx<String>? genreText;

Rx<String>? id;

 }
