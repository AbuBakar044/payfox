import 'controller/write_reviews_controller.dart';
import 'models/write_reviews_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:abu_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class WriteReviewsPage extends StatelessWidget {
  WriteReviewsPage({Key? key})
      : super(
          key: key,
        );

  WriteReviewsController controller =
      Get.put(WriteReviewsController(WriteReviewsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onErrorContainer,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 35.v),
                _buildSubmit(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildReviewOptional() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl_review2".tr,
                style: theme.textTheme.titleMedium,
              ),
              TextSpan(
                text: "lbl_optional".tr,
                style: CustomTextStyles.titleMediumGray500,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 9.v),
        CustomTextFormField(
          controller: controller.editTextController,
          textInputAction: TextInputAction.done,
          borderDecoration: TextFormFieldStyleHelper.fillGrayTL101,
          fillColor: appTheme.gray90025,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSubmit() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          _buildReviewOptional(),
          SizedBox(height: 40.v),
          CustomElevatedButton(
            text: "lbl_submit".tr,
          ),
        ],
      ),
    );
  }
}
