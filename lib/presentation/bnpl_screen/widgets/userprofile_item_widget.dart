import '../controller/bnpl_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<BnplController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(11.h),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUser,
            height: 28.v,
            width: 25.h,
            margin: EdgeInsets.symmetric(vertical: 2.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    userprofileItemModelObj.pay30DaysAfterText!.value,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                SizedBox(height: 3.v),
                Obx(
                  () => Text(
                    userprofileItemModelObj.interestFreePaymentText!.value,
                    style: CustomTextStyles.bodySmallOnPrimary10,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Obx(
            () => CustomImageView(
              imagePath: userprofileItemModelObj.contrastImage!.value,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 8.v),
            ),
          ),
        ],
      ),
    );
  }
}
