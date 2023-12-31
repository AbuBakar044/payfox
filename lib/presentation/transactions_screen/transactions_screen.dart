import '../transactions_screen/widgets/transactionslist_item_widget.dart';
import 'controller/transactions_controller.dart';
import 'models/transactionslist_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class TransactionsScreen extends GetWidget<TransactionsController> {
  const TransactionsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            top: 11.v,
            right: 20.h,
          ),
          child: Obx(
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
              itemCount: controller.transactionsModelObj.value
                  .transactionslistItemList.value.length,
              itemBuilder: (context, index) {
                TransactionslistItemModel model = controller
                    .transactionsModelObj
                    .value
                    .transactionslistItemList
                    .value[index];
                return TransactionslistItemWidget(
                  model,
                );
              },
            ),
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
        text: "lbl_transactions".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgContrastOnprimary,
          margin: EdgeInsets.fromLTRB(20.h, 14.v, 20.h, 18.v),
        ),
      ],
    );
  }
}
