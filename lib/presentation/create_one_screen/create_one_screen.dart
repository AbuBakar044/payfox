import 'controller/create_one_controller.dart';import 'package:abu_s_application3/core/app_export.dart';import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';import 'package:abu_s_application3/widgets/custom_elevated_button.dart';import 'package:abu_s_application3/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';class CreateOneScreen extends GetWidget<CreateOneController> {const CreateOneScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 14.v), child: Column(children: [_buildEnterYourWebsite(), SizedBox(height: 20.v), _buildExpirationDate(), SizedBox(height: 20.v), _buildPattern(), SizedBox(height: 19.v), _buildAdditionalInformation(), SizedBox(height: 45.v), CustomElevatedButton(text: "lbl_proceed".tr), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftGray90005, margin: EdgeInsets.only(left: 20.h, top: 12.v, bottom: 12.v)), centerTitle: true, title: AppbarSubtitleOne(text: "msg_generate_qr_code".tr)); } 
/// Section Widget
Widget _buildEnterYourWebsite() { return Padding(padding: EdgeInsets.only(right: 1.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_enter_your_website".tr, style: CustomTextStyles.labelLargeSemiBold12), SizedBox(height: 6.v), CustomTextFormField(controller: controller.websiteURLController, hintText: "lbl_website_url".tr, hintStyle: CustomTextStyles.labelLargeGray50001, contentPadding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 18.v))])); } 
/// Section Widget
Widget _buildExpirationDate() { return Padding(padding: EdgeInsets.only(right: 1.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [RichText(text: TextSpan(children: [TextSpan(text: "lbl_expiration_date".tr, style: CustomTextStyles.labelLargeSemiBold), TextSpan(text: "lbl_optional".tr, style: CustomTextStyles.labelLargeOnPrimarySemiBold)]), textAlign: TextAlign.left), SizedBox(height: 7.v), GestureDetector(onTap: () {onTapPrimaryDefault();}, child: Container(margin: EdgeInsets.only(right: 1.h), padding: EdgeInsets.all(16.h), decoration: AppDecoration.back.copyWith(borderRadius: BorderRadiusStyle.circleBorder26), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(left: 3.h, top: 2.v), child: Obx(() => Text(controller.createOneModelObj.value.chooseExpiration.value, style: CustomTextStyles.labelLargeGray50001))), CustomImageView(imagePath: ImageConstant.imgCalendarPurple100, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(top: 1.v))])))])); } 
/// Section Widget
Widget _buildPattern() { return Container(margin: EdgeInsets.only(right: 1.h), padding: EdgeInsets.symmetric(horizontal: 1.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_pattern".tr, style: CustomTextStyles.labelLargeSemiBold12), SizedBox(height: 11.v), Padding(padding: EdgeInsets.only(right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(padding: EdgeInsets.all(4.h), decoration: AppDecoration.fillGray90009.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.symmetric(vertical: 10.v), child: Column(children: [_buildThumbsUp(), SizedBox(height: 12.v), Text("lbl_pattern_1".tr, style: theme.textTheme.titleSmall)])), CustomImageView(imagePath: ImageConstant.imgCheckmarkGreen900, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(left: 6.h, bottom: 74.v))])), Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 14.v), decoration: AppDecoration.fillGray90009.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, children: [_buildThumbsUp(), SizedBox(height: 12.v), Text("lbl_pattern_2".tr, style: theme.textTheme.titleSmall)])), Container(padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 14.v), decoration: AppDecoration.fillGray90009.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, children: [_buildThumbsUp(), SizedBox(height: 12.v), Text("lbl_pattern_3".tr, style: theme.textTheme.titleSmall)]))]))])); } 
/// Section Widget
Widget _buildAdditionalInformation() { return Padding(padding: EdgeInsets.only(right: 1.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_additional_information".tr, style: CustomTextStyles.labelLargeSemiBold12), SizedBox(height: 8.v), CustomTextFormField(controller: controller.enterInfoController, hintText: "lbl_enter_info".tr, hintStyle: CustomTextStyles.labelLargeGray50001, textInputAction: TextInputAction.done, maxLines: 6, contentPadding: EdgeInsets.all(20.h), borderDecoration: TextFormFieldStyleHelper.fillGrayTL103)])); } 
/// Common widget
Widget _buildThumbsUp() { return SizedBox(height: 40.adaptSize, width: 40.adaptSize, child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgThumbsUp, height: 27.adaptSize, width: 27.adaptSize, alignment: Alignment.center), Align(alignment: Alignment.center, child: SizedBox(height: 40.adaptSize, width: 40.adaptSize, child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgPlay, height: 40.adaptSize, width: 40.adaptSize, alignment: Alignment.center), CustomImageView(imagePath: ImageConstant.imgGridPurple100, height: 18.adaptSize, width: 18.adaptSize, alignment: Alignment.center)])))])); } 

/// Displays a date picker dialog and updates the selected date in the
/// [createOneModelObj] object of the current [chooseExpiration] if the user 
/// selects a valid date.
///
/// This function returns a `Future` that completes with `void`.
Future<void> onTapPrimaryDefault() async  { DateTime? dateTime  = await showDatePicker(context: Get.context!,initialDate: controller.createOneModelObj.value.selectedChooseExpiration!.value , firstDate: DateTime(1970) ,lastDate: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day)); if (dateTime != null) {controller.createOneModelObj.value.selectedChooseExpiration!.value = dateTime;controller.createOneModelObj.value.chooseExpiration.value = dateTime.format(dateTimeFormatPattern);} } 
 }