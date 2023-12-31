import 'controller/block_card_two_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:abu_s_application3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class BlockCardTwoBottomsheet extends StatelessWidget {
  BlockCardTwoBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  BlockCardTwoController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 35.v,
      ),
      decoration: AppDecoration.fillBlack.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomIconButton(
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowLeftGray90005,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 110.h,
                      top: 6.v,
                      bottom: 8.v,
                    ),
                    child: Text(
                      "lbl_block_card".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 21.v),
          CustomImageView(
            imagePath: ImageConstant.imgVideoCameraDeepOrangeA400,
            height: 84.adaptSize,
            width: 84.adaptSize,
          ),
          SizedBox(height: 26.v),
          Text(
            "lbl_confirm".tr,
            style: CustomTextStyles.titleSmallGray20001Bold,
          ),
          SizedBox(height: 17.v),
          Container(
            width: 278.h,
            margin: EdgeInsets.only(
              left: 36.h,
              right: 40.h,
            ),
            child: Text(
              "msg_before_confirming".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelLargeGray40013,
            ),
          ),
          SizedBox(height: 30.v),
          CustomElevatedButton(
            text: "msg_temporarily_block".tr,
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }
}
