import 'controller/tickets_four_controller.dart';
import 'models/tickets_four_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class TicketsFourPage extends StatelessWidget {
  TicketsFourPage({Key? key})
      : super(
          key: key,
        );

  TicketsFourController controller =
      Get.put(TicketsFourController(TicketsFourModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 42.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                  children: [
                    SizedBox(
                      height: 479.v,
                      width: 322.h,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgSubtract,
                            height: 439.v,
                            width: 280.h,
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(bottom: 3.v),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgVector8,
                            height: 38.v,
                            width: 189.h,
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(
                              right: 51.h,
                              bottom: 164.v,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgMaskGroup157x228,
                            height: 157.v,
                            width: 228.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(top: 37.v),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 78.h,
                              margin: EdgeInsets.only(
                                left: 99.h,
                                top: 174.v,
                              ),
                              child: Text(
                                "lbl_ratu_ilmu_hitam".tr,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodyMedium14.copyWith(
                                  height: 1.08,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 86.h,
                                bottom: 206.v,
                              ),
                              child: Text(
                                "lbl_20_nov".tr,
                                style: CustomTextStyles.titleSmallOnPrimary,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                right: 129.h,
                                bottom: 196.v,
                              ),
                              child: Text(
                                "lbl_15_05".tr,
                                style: CustomTextStyles.titleSmallOnPrimary,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                right: 57.h,
                                bottom: 180.v,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 3.h),
                                    child: Text(
                                      "lbl_seats".tr,
                                      style: CustomTextStyles
                                          .labelMediumOnPrimary_4,
                                    ),
                                  ),
                                  SizedBox(height: 1.v),
                                  Text(
                                    "lbl_g10_g11".tr,
                                    style: CustomTextStyles.titleSmallOnPrimary,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              width: 45.h,
                              margin: EdgeInsets.only(
                                left: 76.h,
                                bottom: 149.v,
                              ),
                              child: Text(
                                "lbl_booking_code".tr,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.labelMediumOnPrimary_4
                                    .copyWith(
                                  height: 1.38,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              width: 89.h,
                              margin: EdgeInsets.only(
                                left: 73.h,
                                bottom: 119.v,
                              ),
                              child: Text(
                                "lbl_091821912301".tr,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              width: 28.h,
                              margin: EdgeInsets.only(
                                left: 67.h,
                                bottom: 102.v,
                              ),
                              child: Text(
                                "lbl_pass_key".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.labelMediumOnPrimary_4
                                    .copyWith(
                                  height: 1.38,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              width: 32.h,
                              margin: EdgeInsets.only(
                                left: 65.h,
                                bottom: 84.v,
                              ),
                              child: Text(
                                "lbl_129312".tr,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgGroup8,
                            height: 81.v,
                            width: 192.h,
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(
                              left: 56.h,
                              bottom: 16.v,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 192.v,
                                right: 43.h,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgUilMapMarker,
                                    height: 16.adaptSize,
                                    width: 16.adaptSize,
                                    margin: EdgeInsets.only(bottom: 32.v),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 4.h,
                                      top: 3.v,
                                    ),
                                    child: Text(
                                      "msg_xxi_ambarukmo_plaza".tr,
                                      style: CustomTextStyles
                                          .labelMediumOnPrimary_3,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgSubtractGray90015,
                            height: 479.v,
                            width: 246.h,
                            alignment: Alignment.centerLeft,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 191.v),
                              child: SizedBox(
                                width: 236.h,
                                child: Divider(
                                  color: appTheme.gray80005,
                                  indent: 11.h,
                                ),
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgMaskGroup142x246,
                            height: 142.v,
                            width: 246.h,
                            alignment: Alignment.topLeft,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 13.h,
                                top: 161.v,
                              ),
                              child: Text(
                                "lbl_ratu_ilmu_hitam".tr,
                                style: CustomTextStyles.bodyMedium14,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 13.h,
                                bottom: 160.v,
                              ),
                              child: Text(
                                "lbl_booking_code".tr,
                                style: CustomTextStyles.labelMediumOnPrimary_4,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 13.h,
                                bottom: 135.v,
                              ),
                              child: Text(
                                "lbl_091821912301".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 13.h,
                                bottom: 103.v,
                              ),
                              child: Text(
                                "lbl_pass_key".tr,
                                style: CustomTextStyles.labelMediumOnPrimary_4,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 13.h,
                                bottom: 82.v,
                              ),
                              child: Text(
                                "lbl_129312".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 13.h,
                                bottom: 13.v,
                              ),
                              child: BarcodeWidget(
                                data: '1234567890',
                                barcode: Barcode.code39(),
                                drawText: false,
                                height: 56.v,
                                width: 219.h,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 13.h,
                                top: 184.v,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgUilMapMarkerOnprimary,
                                    height: 14.adaptSize,
                                    width: 14.adaptSize,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 7.h),
                                    child: Text(
                                      "msg_xxi_ambarukmo_plaza".tr,
                                      style: CustomTextStyles
                                          .labelMediumOnPrimary_3,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 13.h),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_date".tr,
                                        style: CustomTextStyles
                                            .labelMediumOnPrimary_4,
                                      ),
                                      SizedBox(height: 4.v),
                                      Text(
                                        "lbl_20_nov".tr,
                                        style: CustomTextStyles
                                            .titleSmallOnPrimary,
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 37.v,
                                    width: 40.h,
                                    margin: EdgeInsets.only(left: 29.h),
                                    child: Stack(
                                      alignment: Alignment.centerRight,
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                            padding: EdgeInsets.only(top: 4.v),
                                            child: Text(
                                              "lbl_date".tr,
                                              style: CustomTextStyles
                                                  .labelMediumOnPrimary_4,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "lbl_hour".tr,
                                                style: CustomTextStyles
                                                    .labelMediumOnPrimary_4,
                                              ),
                                              SizedBox(height: 6.v),
                                              Text(
                                                "lbl_15_05".tr,
                                                style: CustomTextStyles
                                                    .titleSmallOnPrimary,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 36.v,
                                    width: 56.h,
                                    margin: EdgeInsets.only(left: 27.h),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 5.v),
                                            child: Text(
                                              "lbl_hour".tr,
                                              style: CustomTextStyles
                                                  .labelMediumOnPrimary_4,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "lbl_seats".tr,
                                                style: CustomTextStyles
                                                    .labelMediumOnPrimary_4,
                                              ),
                                              SizedBox(height: 5.v),
                                              Text(
                                                "lbl_g10_g11".tr,
                                                style: CustomTextStyles
                                                    .titleSmallOnPrimary,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 33.v),
                    CustomElevatedButton(
                      text: "msg_book_more_tickets".tr,
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
