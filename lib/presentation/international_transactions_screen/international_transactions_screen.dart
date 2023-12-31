import '../international_transactions_screen/widgets/userprofile7_item_widget.dart';
import 'controller/international_transactions_controller.dart';
import 'models/userprofile7_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class InternationalTransactionsScreen
    extends GetWidget<InternationalTransactionsController> {
  const InternationalTransactionsScreen({Key? key})
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
            top: 18.v,
            right: 20.h,
          ),
          child: Obx(
            () => ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 8.v,
                );
              },
              itemCount: controller.internationalTransactionsModelObj.value
                  .userprofile7ItemList.value.length,
              itemBuilder: (context, index) {
                Userprofile7ItemModel model = controller
                    .internationalTransactionsModelObj
                    .value
                    .userprofile7ItemList
                    .value[index];
                return Userprofile7ItemWidget(
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
      height: 54.v,
      leadingWidth: 52.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftGray90005,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 13.v,
          bottom: 9.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "msg_international_transactions".tr,
      ),
      actions: [
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgVuesaxLinearNotification,
          margin: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 9.v,
          ),
        ),
      ],
    );
  }
}
