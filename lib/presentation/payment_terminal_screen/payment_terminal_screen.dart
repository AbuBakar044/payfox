import '../payment_terminal_screen/widgets/userprofile2_item_widget.dart';
import '../payment_terminal_screen/widgets/viewhierarchy_item_widget.dart';
import 'controller/payment_terminal_controller.dart';
import 'models/userprofile2_item_model.dart';
import 'models/viewhierarchy_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PaymentTerminalScreen extends GetWidget<PaymentTerminalController> {
  const PaymentTerminalScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildTwentyTwo(),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 30.v,
                ),
                child: Column(
                  children: [
                    _buildFrame(),
                    SizedBox(height: 24.v),
                    CustomElevatedButton(
                      text: "lbl_new_payment".tr,
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyTwo() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 13.v),
      decoration: AppDecoration.gradientPurpleToBlueA,
      child: Column(
        children: [
          CustomAppBar(
            height: 32.v,
            leadingWidth: 52.h,
            leading: AppbarLeadingIconbutton(
              imagePath: ImageConstant.imgArrowLeftDeepPurpleA700,
              margin: EdgeInsets.only(left: 20.h),
            ),
            centerTitle: true,
            title: AppbarSubtitleOne(
              text: "msg_payment_terminal".tr,
            ),
          ),
          SizedBox(height: 22.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 41.h),
            child: Obx(
              () => GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 91.v,
                  crossAxisCount: 2,
                  mainAxisSpacing: 7.h,
                  crossAxisSpacing: 7.h,
                ),
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.paymentTerminalModelObj.value
                    .viewhierarchyItemList.value.length,
                itemBuilder: (context, index) {
                  ViewhierarchyItemModel model = controller
                      .paymentTerminalModelObj
                      .value
                      .viewhierarchyItemList
                      .value[index];
                  return ViewhierarchyItemWidget(
                    model,
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 31.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "msg_recent_transactions".tr,
              style: CustomTextStyles.labelLargeGray200_1,
            ),
            Text(
              "lbl_see_more".tr,
              style: CustomTextStyles.labelMediumAmber700,
            ),
          ],
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
            itemCount: controller.paymentTerminalModelObj.value
                .userprofile2ItemList.value.length,
            itemBuilder: (context, index) {
              Userprofile2ItemModel model = controller.paymentTerminalModelObj
                  .value.userprofile2ItemList.value[index];
              return Userprofile2ItemWidget(
                model,
              );
            },
          ),
        ),
      ],
    );
  }
}
