import 'controller/account_creation_controller.dart';import 'package:abu_s_application3/core/app_export.dart';import 'package:abu_s_application3/core/utils/validation_functions.dart';import 'package:abu_s_application3/widgets/custom_elevated_button.dart';import 'package:abu_s_application3/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class AccountCreationScreen extends GetWidget<AccountCreationController> {AccountCreationScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 36.v), child: Column(children: [Container(height: 8.v, width: 353.h, decoration: BoxDecoration(color: appTheme.gray90019, borderRadius: BorderRadius.circular(4.h)), child: ClipRRect(borderRadius: BorderRadius.circular(4.h), child: LinearProgressIndicator(value: 0.25, backgroundColor: appTheme.gray90019, valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.onPrimary.withOpacity(1))))), SizedBox(height: 29.v), Align(alignment: Alignment.centerLeft, child: Text("msg_tell_us_about_yourself".tr, style: CustomTextStyles.titleLargeRegular)), SizedBox(height: 7.v), Align(alignment: Alignment.centerLeft, child: Text("msg_input_your_full".tr, style: CustomTextStyles.labelLargeGray40002_1)), SizedBox(height: 26.v), _buildFullNameSection(), SizedBox(height: 15.v), _buildDateOfBirthSection(), SizedBox(height: 16.v), _buildAddressSection(), SizedBox(height: 38.v), _buildButtonSection(), SizedBox(height: 5.v)]))))); } 
/// Section Widget
Widget _buildFullNameSection() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_full_name".tr, style: CustomTextStyles.labelLargeSemiBold12), SizedBox(height: 7.v), CustomTextFormField(controller: controller.fullNameController, hintText: "msg_enter_your_full".tr, hintStyle: CustomTextStyles.labelLargeGray50001, prefix: Container(margin: EdgeInsets.fromLTRB(20.h, 14.v, 8.h, 14.v), child: CustomImageView(imagePath: ImageConstant.imgLock, height: 24.adaptSize, width: 24.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 52.v), validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;}, contentPadding: EdgeInsets.only(top: 18.v, right: 30.h, bottom: 18.v))]); } 
/// Section Widget
Widget _buildDateOfBirthSection() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_date_of_birth".tr, style: CustomTextStyles.labelLargeSemiBold12), SizedBox(height: 8.v), GestureDetector(onTap: () {onTapPrimaryDefault();}, child: Container(padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 14.v), decoration: AppDecoration.back.copyWith(borderRadius: BorderRadiusStyle.circleBorder26), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [CustomImageView(imagePath: ImageConstant.imgCalendar, height: 24.adaptSize, width: 24.adaptSize), Padding(padding: EdgeInsets.only(left: 8.h, top: 5.v, bottom: 2.v), child: Obx(() => Text(controller.accountCreationModelObj.value.enterYourBirth.value, style: CustomTextStyles.labelLargeGray50001)))])))]); } 
/// Section Widget
Widget _buildAddressSection() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_address".tr, style: CustomTextStyles.labelLargeSemiBold12), SizedBox(height: 7.v), CustomTextFormField(controller: controller.addressController, hintText: "msg_enter_your_birth".tr, hintStyle: CustomTextStyles.labelLargeGray50001, textInputAction: TextInputAction.done, prefix: Container(margin: EdgeInsets.fromLTRB(20.h, 14.v, 8.h, 14.v), child: CustomImageView(imagePath: ImageConstant.imgGlobe, height: 24.adaptSize, width: 24.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 52.v), contentPadding: EdgeInsets.only(top: 18.v, right: 30.h, bottom: 18.v))]); } 
/// Section Widget
Widget _buildButtonSection() { return SizedBox(height: 56.v, width: 353.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.center, child: Container(height: 52.v, width: 353.h, decoration: BoxDecoration())), CustomElevatedButton(height: 56.v, width: 353.h, text: "lbl_next".tr, buttonStyle: CustomButtonStyles.none, decoration: CustomButtonStyles.gradientPrimaryToBlueATL28Decoration, buttonTextStyle: CustomTextStyles.titleSmallBold, alignment: Alignment.center)])); } 

/// Displays a date picker dialog and updates the selected date in the
/// [accountCreationModelObj] object of the current [enterYourBirth] if the user 
/// selects a valid date.
///
/// This function returns a `Future` that completes with `void`.
Future<void> onTapPrimaryDefault() async  { DateTime? dateTime  = await showDatePicker(context: Get.context!,initialDate: controller.accountCreationModelObj.value.selectedEnterYourBirth!.value , firstDate: DateTime(1970) ,lastDate: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day)); if (dateTime != null) {controller.accountCreationModelObj.value.selectedEnterYourBirth!.value = dateTime;controller.accountCreationModelObj.value.enterYourBirth.value = dateTime.format(dateTimeFormatPattern);} } 
 }
