import 'controller/account_creation_one_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/core/utils/validation_functions.dart';
import 'package:abu_s_application3/widgets/custom_drop_down.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:abu_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AccountCreationOneScreen extends GetWidget<AccountCreationOneController> {
  AccountCreationOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 36.v,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.h),
                  child: Container(
                    height: 8.v,
                    width: 353.h,
                    decoration: BoxDecoration(
                      color: appTheme.gray90019,
                      borderRadius: BorderRadius.circular(
                        4.h,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        4.h,
                      ),
                      child: LinearProgressIndicator(
                        value: 0.39,
                        backgroundColor: appTheme.gray90019,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          theme.colorScheme.onPrimary.withOpacity(1),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 44.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "msg_government_issued".tr,
                      style: CustomTextStyles.titleLargeRegular,
                    ),
                  ),
                ),
                SizedBox(height: 7.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 313.h,
                    margin: EdgeInsets.only(
                      left: 4.h,
                      right: 43.h,
                    ),
                    child: Text(
                      "msg_upload_a_clear_photo".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.labelMediumBluegray10004,
                    ),
                  ),
                ),
                SizedBox(height: 37.v),
                _buildSelectYourCountry(),
                SizedBox(height: 17.v),
                _buildDocumentType(),
                SizedBox(height: 16.v),
                _buildDocumentNumber(),
                Spacer(
                  flex: 40,
                ),
                _buildFrame(),
                Spacer(
                  flex: 59,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSelectYourCountry() {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_select_your_country".tr,
            style: CustomTextStyles.labelLargeSemiBold12,
          ),
          SizedBox(height: 6.v),
          CustomDropDown(
            icon: Container(
              margin: EdgeInsets.fromLTRB(30.h, 14.v, 16.h, 14.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgCheckmarkGray50007,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            hintText: "msg_choose_your_country".tr,
            items: controller
                .accountCreationOneModelObj.value.dropdownItemList!.value,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(20.h, 14.v, 8.h, 14.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgGlobe,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 52.v,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 18.v),
            onChanged: (value) {
              controller.onSelected(value);
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDocumentType() {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_document_type".tr,
            style: CustomTextStyles.labelLargeSemiBold12,
          ),
          SizedBox(height: 6.v),
          CustomDropDown(
            icon: Container(
              margin: EdgeInsets.fromLTRB(30.h, 14.v, 16.h, 14.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgCheckmarkGray50007,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            hintText: "msg_select_document".tr,
            items: controller
                .accountCreationOneModelObj.value.dropdownItemList1!.value,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(20.h, 14.v, 8.h, 14.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgVuesaxLinearReceiptsearch,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 52.v,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 18.v),
            onChanged: (value) {
              controller.onSelected1(value);
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDocumentNumber() {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_document_number".tr,
            style: CustomTextStyles.labelLargeSemiBold12,
          ),
          SizedBox(height: 7.v),
          CustomTextFormField(
            controller: controller.enterDocumentNumberController,
            hintText: "msg_enter_document_number".tr,
            hintStyle: CustomTextStyles.labelLargeGray50001,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.number,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(20.h, 14.v, 8.h, 14.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgThumbsupAmber700,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 52.v,
            ),
            validator: (value) {
              if (!isNumeric(value)) {
                return "err_msg_please_enter_valid_number".tr;
              }
              return null;
            },
            contentPadding: EdgeInsets.only(
              top: 18.v,
              right: 12.h,
              bottom: 18.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.h,
        right: 8.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.v),
            child: Text(
              "lbl_previous".tr,
              style: CustomTextStyles.titleSmallBold15,
            ),
          ),
          CustomElevatedButton(
            height: 40.v,
            width: 141.h,
            text: "lbl_next".tr,
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientPrimaryToBlueATL20Decoration,
          ),
        ],
      ),
    );
  }
}
