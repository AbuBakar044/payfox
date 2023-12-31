import '../customers_screen/widgets/userprofile4_item_widget.dart';
import 'controller/customers_controller.dart';
import 'models/userprofile4_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_drop_down.dart';
import 'package:abu_s_application3/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CustomersScreen extends GetWidget<CustomersController> {
  const CustomersScreen({Key? key})
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
          padding: EdgeInsets.symmetric(vertical: 1.v),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 22.h),
                child: CustomDropDown(
                  width: 62.h,
                  hintText: "lbl_dec".tr,
                  alignment: Alignment.centerRight,
                  items: controller
                      .customersModelObj.value.dropdownItemList!.value,
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
              SizedBox(height: 13.v),
            ],
          ),
        ),
        floatingActionButton: _buildFloatingActionButton(),
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
        text: "lbl_customers".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgContrastOnprimary,
          margin: EdgeInsets.fromLTRB(20.h, 14.v, 20.h, 18.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
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
          itemCount: controller
              .customersModelObj.value.userprofile4ItemList.value.length,
          itemBuilder: (context, index) {
            Userprofile4ItemModel model = controller
                .customersModelObj.value.userprofile4ItemList.value[index];
            return Userprofile4ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton() {
    return CustomFloatingButton(
      height: 76,
      width: 78,
      backgroundColor: appTheme.blueGray90007,
      decoration: FloatingButtonStyleHelper.fillBlueGray,
      child: CustomImageView(
        imagePath: ImageConstant.imgPlus,
        height: 38.0.v,
        width: 39.0.h,
      ),
    );
  }
}
