import '../controller/register_two_controller.dart';
import '../models/userprofile3_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile3ItemWidget extends StatelessWidget {
  Userprofile3ItemWidget(
    this.userprofile3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile3ItemModel userprofile3ItemModelObj;

  var controller = Get.find<RegisterTwoController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray90023.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 76.v,
            width: 113.h,
            padding: EdgeInsets.symmetric(
              horizontal: 21.h,
              vertical: 12.v,
            ),
            decoration: AppDecoration.fillGray900051.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL5,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath: userprofile3ItemModelObj.userImage!.value,
                height: 52.v,
                width: 71.h,
                alignment: Alignment.center,
              ),
            ),
          ),
          SizedBox(height: 7.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: Obx(
                () => Text(
                  userprofile3ItemModelObj.titleText!.value,
                  style: CustomTextStyles.poppinsOnPrimaryRegular,
                ),
              ),
            ),
          ),
          SizedBox(height: 2.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  userprofile3ItemModelObj.priceText!.value,
                  style: CustomTextStyles.labelSmallPoppinsOnPrimary,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 11.h),
                child: CustomIconButton(
                  height: 12.v,
                  width: 11.h,
                  child: CustomImageView(),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  bottom: 2.v,
                ),
                child: Obx(
                  () => Text(
                    userprofile3ItemModelObj.quantityText!.value,
                    style: CustomTextStyles.poppinsOnPrimary,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 13.h),
                child: CustomIconButton(
                  height: 12.v,
                  width: 11.h,
                  child: CustomImageView(),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
        ],
      ),
    );
  }
}
