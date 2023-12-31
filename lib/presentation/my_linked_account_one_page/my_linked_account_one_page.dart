import 'controller/my_linked_account_one_controller.dart';
import 'models/my_linked_account_one_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/core/utils/validation_functions.dart';
import 'package:abu_s_application3/widgets/custom_checkbox_button.dart';
import 'package:abu_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class MyLinkedAccountOnePage extends StatelessWidget {
  MyLinkedAccountOnePage({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  MyLinkedAccountOneController controller =
      Get.put(MyLinkedAccountOneController(MyLinkedAccountOneModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillGray,
            child: Column(
              children: [
                SizedBox(height: 37.v),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Column(
                      children: [
                        _buildFrameLogo(),
                        SizedBox(height: 28.v),
                        _buildFrameNameOnCard(),
                        SizedBox(height: 21.v),
                        _buildFrameCardNumber(),
                        SizedBox(height: 20.v),
                        _buildFrameExpiryDateAndSecurityCode(),
                        SizedBox(height: 20.v),
                        _buildCheckBoxSaveCard(),
                      ],
                    ),
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
  Widget _buildFrameLogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OutlineGradientButton(
          padding: EdgeInsets.only(
            left: 1.h,
            top: 1.v,
            right: 1.h,
            bottom: 1.v,
          ),
          strokeWidth: 1.h,
          gradient: LinearGradient(
            begin: Alignment(0, 0),
            end: Alignment(1.22, 1.34),
            colors: [
              appTheme.blueGray700,
              appTheme.gray80000,
            ],
          ),
          corners: Corners(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 25.h,
              vertical: 14.v,
            ),
            decoration: AppDecoration.outline2.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 7.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLogo,
                        height: 20.v,
                        width: 32.h,
                        margin: EdgeInsets.only(top: 10.v),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgUserOnprimary30x48,
                        height: 30.v,
                        width: 48.h,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 29.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "msg_1253".tr,
                      style: CustomTextStyles.titleMediumBold19,
                    ),
                  ),
                ),
                SizedBox(height: 32.v),
                Container(
                  width: 272.h,
                  margin: EdgeInsets.only(
                    left: 4.h,
                    right: 1.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 4.v),
                        child: Text(
                          "lbl_sarah_wegan".tr,
                          style: CustomTextStyles.labelLargeBold12,
                        ),
                      ),
                      Spacer(),
                      Opacity(
                        opacity: 0.8,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 3.v),
                          child: Text(
                            "lbl_exp".tr,
                            style: CustomTextStyles.bodySmallOnPrimary12,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          bottom: 4.v,
                        ),
                        child: Text(
                          "lbl_09_24".tr,
                          style: CustomTextStyles.labelLargeBold12,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 17.v),
              ],
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgRectangle5968,
          height: 167.v,
          width: 29.h,
          margin: EdgeInsets.only(
            left: 15.h,
            top: 7.v,
            bottom: 7.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameNameOnCard() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_name_on_card".tr,
          style: CustomTextStyles.bodyMediumBluegray10009,
        ),
        SizedBox(height: 7.v),
        Padding(
          padding: EdgeInsets.only(right: 20.h),
          child: CustomTextFormField(
            controller: controller.nameController,
            hintText: "lbl_sarah_wegan".tr,
            hintStyle: theme.textTheme.titleSmall!,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 17.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.fillGrayTL102,
            fillColor: appTheme.gray90009,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameCardNumber() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_card_number".tr,
          style: CustomTextStyles.labelLargeBluegray10009,
        ),
        SizedBox(height: 7.v),
        Padding(
          padding: EdgeInsets.only(right: 20.h),
          child: CustomTextFormField(
            controller: controller.cardNumberController,
            hintText: "msg_1234_5678_9012_3456".tr,
            hintStyle: CustomTextStyles.titleSmall_1,
            suffix: Container(
              padding: EdgeInsets.fromLTRB(6.h, 5.v, 5.h, 5.v),
              margin: EdgeInsets.fromLTRB(30.h, 14.v, 19.h, 14.v),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  4.h,
                ),
                border: Border.all(
                  color: appTheme.gray70002,
                  width: 1.h,
                ),
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgUserRedA70001,
                height: 13.v,
                width: 22.h,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 52.v,
            ),
            contentPadding: EdgeInsets.only(
              left: 16.h,
              top: 17.v,
              bottom: 17.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.fillGrayTL102,
            fillColor: appTheme.gray90009,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameExpiryDate() {
    return Padding(
      padding: EdgeInsets.only(top: 1.v),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_expiry_date2".tr,
            style: CustomTextStyles.bodyMediumBluegray10009,
          ),
          SizedBox(height: 6.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 17.v,
            ),
            decoration: AppDecoration.fillGray90009.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "lbl_18_24".tr,
                  style: theme.textTheme.titleSmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameSecurityCode() {
    return Padding(
      padding: EdgeInsets.only(left: 15.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    "lbl_security_code".tr,
                    style: CustomTextStyles.labelLargeBluegray10009,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFeatherIcon,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(left: 12.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
          CustomTextFormField(
            width: 169.h,
            controller: controller.languageController,
            hintText: "lbl6".tr,
            hintStyle: CustomTextStyles.titleSmall15,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: true,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 16.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.fillGrayTL102,
            fillColor: appTheme.gray90009,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameExpiryDateAndSecurityCode() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 20.h),
        child: Row(
          children: [
            _buildFrameExpiryDate(),
            _buildFrameSecurityCode(),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckBoxSaveCard() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Obx(
        () => CustomCheckboxButton(
          alignment: Alignment.centerLeft,
          text: "lbl_save_card".tr,
          value: controller.checkBoxSaveCard.value,
          padding: EdgeInsets.symmetric(vertical: 3.v),
          textStyle: CustomTextStyles.bodyMedium14_1,
          onChange: (value) {
            controller.checkBoxSaveCard.value = value;
          },
        ),
      ),
    );
  }
}
