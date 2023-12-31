import '../controller/refueling_controller.dart';
import '../models/gasstationlist_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GasstationlistItemWidget extends StatelessWidget {
  GasstationlistItemWidget(
    this.gasstationlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  GasstationlistItemModel gasstationlistItemModelObj;

  var controller = Get.find<RefuelingController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 147.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          decoration: AppDecoration.fillOrange.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 17.v),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgDlf1,
                      height: 17.v,
                      width: 45.h,
                      margin: EdgeInsets.only(
                        top: 13.v,
                        bottom: 12.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 67.h,
                            child: Obx(
                              () => Text(
                                gasstationlistItemModelObj
                                    .gasStationName!.value,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.labelMediumOnError
                                    .copyWith(
                                  height: 1.20,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 8.v),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_1_5".tr,
                                  style: CustomTextStyles.bodySmallOnError10,
                                ),
                                TextSpan(
                                  text: "lbl_galls".tr,
                                  style: CustomTextStyles.bodySmallGray70004,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 13.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 8.h,
                  vertical: 11.v,
                ),
                decoration: AppDecoration.fillGray90025.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderBL7,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGridAmber700,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 4.h,
                        top: 3.v,
                        bottom: 2.v,
                      ),
                      child: Obx(
                        () => Text(
                          gasstationlistItemModelObj.distanceText!.value,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ),
                    Obx(
                      () => CustomImageView(
                        imagePath:
                            gasstationlistItemModelObj.distanceImage2!.value,
                        height: 10.v,
                        width: 5.h,
                        margin: EdgeInsets.fromLTRB(51.h, 3.v, 2.h, 3.v),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
