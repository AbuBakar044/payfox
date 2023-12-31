import '../controller/tickets_one_controller.dart';
import '../models/moviedetailslist_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MoviedetailslistItemWidget extends StatelessWidget {
  MoviedetailslistItemWidget(
    this.moviedetailslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MoviedetailslistItemModel moviedetailslistItemModelObj;

  var controller = Get.find<TicketsOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2.v),
      decoration: AppDecoration.back.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 164.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: moviedetailslistItemModelObj.movieImage!.value,
              height: 170.v,
              width: 164.h,
              radius: BorderRadius.vertical(
                top: Radius.circular(8.h),
              ),
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Obx(
              () => Text(
                moviedetailslistItemModelObj.movieTitle!.value,
                style: CustomTextStyles.titleMediumOnPrimary,
              ),
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgStar,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Obx(
                    () => Text(
                      moviedetailslistItemModelObj.ratingText!.value,
                      style: CustomTextStyles.bodySmallOnPrimary12_2,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Obx(
              () => Text(
                moviedetailslistItemModelObj.genreText!.value,
                style: CustomTextStyles.bodyMediumOnPrimary14,
              ),
            ),
          ),
          SizedBox(height: 14.v),
        ],
      ),
    );
  }
}
