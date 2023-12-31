import '../history_screen/widgets/userprofile9_item_widget.dart';
import 'controller/history_controller.dart';
import 'models/userprofile9_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HistoryScreen extends GetWidget<HistoryController> {
  const HistoryScreen({Key? key})
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
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 2.h),
                child: CustomDropDown(
                  width: 62.h,
                  hintText: "lbl_dec".tr,
                  alignment: Alignment.centerRight,
                  items:
                      controller.historyModelObj.value.dropdownItemList!.value,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 12.h,
                    vertical: 6.v,
                  ),
                  borderDecoration: DropDownStyleHelper.fillGrayTL4,
                  onChanged: (value) {
                    controller.onSelected(value);
                  },
                ),
              ),
              SizedBox(height: 13.v),
              _buildUserProfile(),
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
        text: "lbl_history".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgContrastOnprimary,
          margin: EdgeInsets.fromLTRB(20.h, 17.v, 20.h, 15.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Obx(
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
        itemCount:
            controller.historyModelObj.value.userprofile9ItemList.value.length,
        itemBuilder: (context, index) {
          Userprofile9ItemModel model = controller
              .historyModelObj.value.userprofile9ItemList.value[index];
          return Userprofile9ItemWidget(
            model,
          );
        },
      ),
    );
  }
}
