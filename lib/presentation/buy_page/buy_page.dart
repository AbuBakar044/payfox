import 'controller/buy_controller.dart';
import 'models/buy_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/custom_icon_button.dart';
import 'package:abu_s_application3/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class BuyPage extends StatelessWidget {
  BuyPage({Key? key})
      : super(
          key: key,
        );

  BuyController controller = Get.put(BuyController(BuyModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onErrorContainer,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 16.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    children: [
                      CustomSearchView(
                        controller: controller.searchController,
                        hintText: "msg_search_recent_transactions".tr,
                        hintStyle:
                            CustomTextStyles.bodyMediumPoppinsBluegray40001,
                        borderDecoration: SearchViewStyleHelper.outlineGrayTL10,
                        fillColor: appTheme.gray90020,
                      ),
                      SizedBox(height: 20.v),
                      _buildOrderDetails(
                        orderNo: "lbl_order_no".tr,
                        message: "msg_gj34je6738_hdj38h".tr,
                        price: "lbl_7_025".tr,
                        instalmentOut: "msg_instalment_2_out".tr,
                        date: "lbl_20_dec_2023".tr,
                      ),
                      SizedBox(height: 12.v),
                      _buildOrderDetails(
                        orderNo: "lbl_order_no".tr,
                        message: "msg_gj34je6738_hdj38h".tr,
                        price: "lbl_7_025".tr,
                        instalmentOut: "msg_instalment_2_out".tr,
                        date: "lbl_20_jan_2023".tr,
                      ),
                      SizedBox(height: 12.v),
                      _buildOrderDetails4(),
                      SizedBox(height: 20.v),
                      Text(
                        "lbl_see_more".tr,
                        style: CustomTextStyles.labelMediumAmber700Bold,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderDetails4() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildOrderDetails1(
                  orderNo: "lbl_order_no".tr,
                  message: "msg_gj34je6738_hdj38h".tr,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgCheckmarkGreen80001,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(
                    top: 10.v,
                    bottom: 8.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 22.v),
          Padding(
            padding: EdgeInsets.only(right: 3.h),
            child: _buildFrame1(
              price: "lbl_7_025".tr,
              instalmentOut: "msg_instalment_2_out".tr,
              date: "lbl_20_dec_2023".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildOrderDetails({
    required String orderNo,
    required String message,
    required String price,
    required String instalmentOut,
    required String date,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_order_no2".tr,
                            style: CustomTextStyles.bodySmallOnPrimary12_1,
                          ),
                          TextSpan(
                            text: "lbl".tr,
                            style: CustomTextStyles.labelLargeOnPrimary,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      message,
                      style: CustomTextStyles.labelLargeOnPrimary12_2.copyWith(
                        color: theme.colorScheme.onPrimary.withOpacity(0.9),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10.v,
                    bottom: 8.v,
                  ),
                  child: CustomIconButton(
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgContrastOrange5000116x16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 22.v),
          Padding(
            padding: EdgeInsets.only(right: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  price,
                  style: CustomTextStyles.titleSmallBold15.copyWith(
                    color: theme.colorScheme.onPrimary.withOpacity(1),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 7.h,
                    top: 3.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    instalmentOut,
                    style: CustomTextStyles.bodySmallOnPrimary10_1.copyWith(
                      color: theme.colorScheme.onPrimary.withOpacity(0.65),
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 3.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    date,
                    style: CustomTextStyles.bodySmall10.copyWith(
                      color: theme.colorScheme.onPrimary.withOpacity(1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildOrderDetails1({
    required String orderNo,
    required String message,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl_order_no2".tr,
                style: CustomTextStyles.bodySmallOnPrimary12_1,
              ),
              TextSpan(
                text: "lbl".tr,
                style: CustomTextStyles.labelLargeOnPrimary,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 2.v),
        Text(
          message,
          style: CustomTextStyles.labelLargeOnPrimary12_2.copyWith(
            color: theme.colorScheme.onPrimary.withOpacity(0.9),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrame1({
    required String price,
    required String instalmentOut,
    required String date,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          price,
          style: CustomTextStyles.titleSmallBold15.copyWith(
            color: theme.colorScheme.onPrimary.withOpacity(1),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 7.h,
            top: 3.v,
            bottom: 2.v,
          ),
          child: Text(
            instalmentOut,
            style: CustomTextStyles.bodySmallOnPrimary10_1.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(0.65),
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 3.v,
            bottom: 2.v,
          ),
          child: Text(
            date,
            style: CustomTextStyles.bodySmall10.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(1),
            ),
          ),
        ),
      ],
    );
  }
}
