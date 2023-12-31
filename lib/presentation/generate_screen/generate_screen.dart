import '../generate_screen/widgets/choosepurposeof_item_widget.dart';
import 'controller/generate_controller.dart';
import 'models/choosepurposeof_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class GenerateScreen extends GetWidget<GenerateController> {
  const GenerateScreen({Key? key})
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
            horizontal: 19.h,
            vertical: 16.v,
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 1.h),
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "msg_choose_purpose_of".tr,
                      style: CustomTextStyles.labelLargeSemiBold12,
                    ),
                    SizedBox(height: 10.v),
                    _buildChoosePurposeOf(),
                  ],
                ),
              ),
              SizedBox(height: 46.v),
              CustomElevatedButton(
                text: "lbl_proceed".tr,
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
        text: "msg_generate_qr_code".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildChoosePurposeOf() {
    return Obx(
      () => GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 99.v,
          crossAxisCount: 3,
          mainAxisSpacing: 8.h,
          crossAxisSpacing: 8.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: controller
            .generateModelObj.value.choosepurposeofItemList.value.length,
        itemBuilder: (context, index) {
          ChoosepurposeofItemModel model = controller
              .generateModelObj.value.choosepurposeofItemList.value[index];
          return ChoosepurposeofItemWidget(
            model,
          );
        },
      ),
    );
  }
}
