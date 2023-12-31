import 'controller/verification_one_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:abu_s_application3/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class VerificationOneScreen extends GetWidget<VerificationOneController> {
  const VerificationOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.gray90010,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 17.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "msg_otp_has_been_sent".tr,
                  style: CustomTextStyles.titleLargeRegular,
                ),
              ),
              SizedBox(height: 8.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "msg_enter_the_code_sent".tr,
                  style: CustomTextStyles.labelLargeGray4000212,
                ),
              ),
              SizedBox(height: 54.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.h),
                child: Obx(
                  () => CustomPinCodeTextField(
                    context: Get.context!,
                    controller: controller.otpController.value,
                    onChanged: (value) {},
                  ),
                ),
              ),
              SizedBox(height: 27.v),
              Text(
                "msg_resend_code_in_0_40".tr,
                style: CustomTextStyles.titleSmallSemiBold,
              ),
              SizedBox(height: 40.v),
              _buildButton(),
              SizedBox(height: 74.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_didn_t_receive_any2".tr,
                      style: CustomTextStyles.titleSmallGray40008,
                    ),
                    TextSpan(
                      text: " ",
                    ),
                    TextSpan(
                      text: "lbl_resend".tr,
                      style: CustomTextStyles.titleSmallAmberA400,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
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
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVuesaxLinearArrowLeft,
        margin: EdgeInsets.fromLTRB(16.h, 16.v, 353.h, 16.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildButton() {
    return SizedBox(
      height: 56.v,
      width: 353.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 52.v,
              width: 353.h,
              decoration: BoxDecoration(),
            ),
          ),
          CustomElevatedButton(
            height: 56.v,
            width: 353.h,
            text: "lbl_sign_up".tr,
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientPrimaryToBlueATL28Decoration,
            buttonTextStyle: CustomTextStyles.titleSmallBold,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
