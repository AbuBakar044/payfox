import '../block_card_screen/widgets/userprofile1_item_widget.dart';
import 'controller/block_card_controller.dart';
import 'models/userprofile1_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_drop_down.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BlockCardScreen extends GetWidget<BlockCardController> {
  const BlockCardScreen({Key? key})
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
            vertical: 15.v,
          ),
          child: Column(
            children: [
              _buildUserProfile(),
              SizedBox(height: 26.v),
              _buildFrameNinetyTwo(),
              SizedBox(height: 36.v),
              CustomElevatedButton(
                text: "msg_temporarily_block".tr,
              ),
              SizedBox(height: 5.v),
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
        text: "lbl_block_card".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_select_card".tr,
            style: CustomTextStyles.labelLargeSemiBold12,
          ),
          SizedBox(height: 11.v),
          SizedBox(
            height: 94.v,
            child: Obx(
              () => ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    width: 7.h,
                  );
                },
                itemCount: controller
                    .blockCardModelObj.value.userprofile1ItemList.value.length,
                itemBuilder: (context, index) {
                  Userprofile1ItemModel model = controller.blockCardModelObj
                      .value.userprofile1ItemList.value[index];
                  return Userprofile1ItemWidget(
                    model,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameNinetyTwo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_reasons_for_blocking".tr,
          style: CustomTextStyles.labelLargeSemiBold12,
        ),
        SizedBox(height: 6.v),
        CustomDropDown(
          hintText: "msg_my_card_got_stolen".tr,
          items: controller.blockCardModelObj.value.dropdownItemList!.value,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 18.v,
          ),
          onChanged: (value) {
            controller.onSelected(value);
          },
        ),
      ],
    );
  }
}
