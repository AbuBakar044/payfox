import '../transaction_overview_screen/widgets/userprofile8_item_widget.dart';
import 'controller/transaction_overview_controller.dart';
import 'models/userprofile8_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class TransactionOverviewScreen
    extends GetWidget<TransactionOverviewController> {
  const TransactionOverviewScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 13.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 14.v),
              _buildLinearAreaChart(),
              SizedBox(height: 24.v),
              _buildTransactionOverview(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 52.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftGray90005,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 12.v,
          bottom: 12.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "msg_recent_transcations".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildLinearAreaChart() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_5_987_34".tr,
                      style: CustomTextStyles.headlineLargeOnPrimary,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "lbl_december".tr,
                      style: CustomTextStyles.bodySmallGray40003,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 13.v,
                    bottom: 16.v,
                  ),
                  child: CustomIconButton(
                    height: 22.adaptSize,
                    width: 22.adaptSize,
                    padding: EdgeInsets.all(3.h),
                    decoration: IconButtonStyleHelper.fillGrayTL11,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup2019,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 23.v),
          Column(
            children: [
              Divider(
                color: appTheme.gray90024,
              ),
              SizedBox(height: 5.v),
              SizedBox(
                height: 213.v,
                width: 336.h,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(right: 3.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_9".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                            SizedBox(height: 10.v),
                            Text(
                              "lbl_8".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                            SizedBox(height: 10.v),
                            Text(
                              "lbl_7".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                            SizedBox(height: 10.v),
                            Text(
                              "lbl_62".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                            SizedBox(height: 10.v),
                            Text(
                              "lbl_5".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                            SizedBox(height: 10.v),
                            Text(
                              "lbl_42".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                            SizedBox(height: 10.v),
                            Text(
                              "lbl_32".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                            SizedBox(height: 10.v),
                            Text(
                              "lbl_22".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                            SizedBox(height: 10.v),
                            Text(
                              "lbl_1".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                            SizedBox(height: 18.v),
                            Padding(
                              padding: EdgeInsets.only(left: 7.h),
                              child: Row(
                                children: [
                                  Text(
                                    "lbl_0".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 28.h,
                                      top: 1.v,
                                    ),
                                    child: Text(
                                      "lbl_1".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "lbl_22".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 28.h),
                                    child: Text(
                                      "lbl_32".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 28.h,
                                      top: 1.v,
                                    ),
                                    child: Text(
                                      "lbl_42".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 28.h,
                                      top: 1.v,
                                    ),
                                    child: Text(
                                      "lbl_5".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 28.h,
                                      top: 1.v,
                                    ),
                                    child: Text(
                                      "lbl_62".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 28.h,
                                      top: 1.v,
                                    ),
                                    child: Text(
                                      "lbl_7".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 28.h,
                                      top: 1.v,
                                    ),
                                    child: Text(
                                      "lbl_8".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 28.h,
                                      top: 1.v,
                                    ),
                                    child: Text(
                                      "lbl_9".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup2046Amber700,
                      height: 196.v,
                      width: 331.h,
                      alignment: Alignment.topCenter,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTransactionOverview() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_overall_transactions".tr,
          style: CustomTextStyles.labelLargeGray200_1,
        ),
        SizedBox(height: 15.v),
        Obx(
          () => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 8.v,
              );
            },
            itemCount: controller.transactionOverviewModelObj.value
                .userprofile8ItemList.value.length,
            itemBuilder: (context, index) {
              Userprofile8ItemModel model = controller
                  .transactionOverviewModelObj
                  .value
                  .userprofile8ItemList
                  .value[index];
              return Userprofile8ItemWidget(
                model,
              );
            },
          ),
        ),
      ],
    );
  }
}
