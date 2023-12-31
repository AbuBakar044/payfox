import 'controller/parking_controller.dart';
import 'models/parking_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ParkingPage extends StatelessWidget {
  ParkingPage({Key? key})
      : super(
          key: key,
        );

  ParkingController controller = Get.put(ParkingController(ParkingModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 27.h,
                  vertical: 33.v,
                ),
                decoration: AppDecoration.fillGray90019.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_1_2002".tr,
                                  style: CustomTextStyles.headlineSmallInter,
                                ),
                                TextSpan(
                                  text: "lbl7".tr,
                                  style: CustomTextStyles.bodyLargeOnPrimary,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              top: 7.v,
                              bottom: 5.v,
                            ),
                            child: Text(
                              "lbl_18_hrs".tr,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Container(
                      width: 260.h,
                      margin: EdgeInsets.only(
                        left: 1.h,
                        right: 38.h,
                      ),
                      child: Text(
                        "msg_you_re_all_set_to".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.labelMediumGray50b2,
                      ),
                    ),
                    SizedBox(height: 21.v),
                    CustomElevatedButton(
                      height: 48.v,
                      text: "lbl_pay".tr,
                      margin: EdgeInsets.only(left: 1.h),
                      buttonStyle: CustomButtonStyles.fillPrimaryTL20,
                    ),
                    SizedBox(height: 22.v),
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
