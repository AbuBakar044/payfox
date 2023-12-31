import '../buy_tab_container_screen/widgets/tabview_item_widget.dart';
import 'controller/buy_tab_container_controller.dart';
import 'models/tabview_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BuyTabContainerScreen extends GetWidget<BuyTabContainerController> {
  const BuyTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 14.v),
            child: Column(
              children: [
                _buildTotalAmountPaid(),
                SizedBox(height: 12.v),
                _buildScanAndPayLater(),
                SizedBox(height: 22.v),
                _buildTabView(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 54.v,
      leadingWidth: 52.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftGray90005,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 11.v,
          bottom: 11.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_payment".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildTotalAmountPaid() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 32.h,
        vertical: 23.v,
      ),
      decoration: AppDecoration.fillGray900051.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 3.v),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 1.h),
                    child: Text(
                      "msg_total_amount_paid".tr,
                      style: CustomTextStyles.labelMediumGray400,
                    ),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl5".tr,
                        style: CustomTextStyles.titleMediumPoppinsGray80002,
                      ),
                      TextSpan(
                        text: "lbl_390_0002".tr,
                        style: CustomTextStyles
                            .headlineSmallPoppinsGray20001Medium,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          Spacer(),
          SizedBox(
            height: 56.v,
            child: VerticalDivider(
              width: 1.h,
              thickness: 1.v,
              color: appTheme.blueGray900,
              indent: 1.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(19.h, 2.v, 5.h, 2.v),
            child: Column(
              children: [
                Text(
                  "msg_total_unsettled".tr,
                  style: CustomTextStyles.labelMediumGray400,
                ),
                SizedBox(height: 1.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl5".tr,
                        style: CustomTextStyles.titleMediumPoppinsGray80002,
                      ),
                      TextSpan(
                        text: "lbl_63".tr,
                        style: CustomTextStyles
                            .headlineSmallPoppinsGray20001Medium,
                      ),
                      TextSpan(
                        text: "lbl_0_000".tr,
                        style: CustomTextStyles
                            .headlineSmallPoppinsGray20001Medium,
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
    );
  }

  /// Section Widget
  Widget _buildScanAndPayLater() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillGray90013.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                top: 10.v,
                bottom: 8.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_scan_and_pay_later".tr,
                    style: CustomTextStyles.bodyMediumArchivoBlackGray20001,
                  ),
                  SizedBox(height: 9.v),
                  SizedBox(
                    width: 231.h,
                    child: Text(
                      "msg_scan_your_qr_code".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.labelMediumGray40014.copyWith(
                        height: 1.20,
                      ),
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Text(
                    "lbl_scan_to_pay".tr,
                    style: CustomTextStyles.labelMediumAmber700Bold,
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgMerryChristmas,
            height: 91.v,
            width: 74.h,
            margin: EdgeInsets.only(
              left: 10.h,
              right: 12.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabView() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0.v),
            child: SizedBox(
              width: 326.h,
              child: Divider(
                height: 1.v,
                thickness: 1.v,
                color: appTheme.gray90023,
              ),
            ),
          );
        },
        itemCount: controller
            .buyTabContainerModelObj.value.tabviewItemList.value.length,
        itemBuilder: (context, index) {
          TabviewItemModel model = controller
              .buyTabContainerModelObj.value.tabviewItemList.value[index];
          return TabviewItemWidget(
            model,
          );
        },
      ),
    );
  }
}
