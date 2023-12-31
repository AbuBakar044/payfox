import '../send_money_screen/widgets/searchlist_item_widget.dart';
import 'controller/send_money_controller.dart';
import 'models/searchlist_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:abu_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SendMoneyScreen extends GetWidget<SendMoneyController> {
  const SendMoneyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 37.v),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 19.h),
                  child: Text(
                    "lbl_select_contact".tr,
                    style: CustomTextStyles.labelLargeGray200_1,
                  ),
                ),
              ),
              SizedBox(height: 11.v),
              _buildSearchList(),
              SizedBox(height: 69.v),
              Text(
                "lbl_send_money_to".tr,
                style: CustomTextStyles.labelLargeOnPrimary12,
              ),
              SizedBox(height: 7.v),
              Text(
                "lbl_courtney_henry".tr,
                style: CustomTextStyles.titleSmallBold15,
              ),
              SizedBox(height: 50.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 58.h),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 38.h,
                        right: 41.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 4.v,
                              bottom: 7.v,
                            ),
                            child: Text(
                              "lbl_usd".tr,
                              style: CustomTextStyles.labelLargeOnPrimary_1,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowDown,
                            height: 6.v,
                            width: 11.h,
                            margin: EdgeInsets.only(
                              left: 4.h,
                              top: 8.v,
                              bottom: 11.v,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 23.h),
                            child: Text(
                              "lbl_20_000_00".tr,
                              style: theme.textTheme.headlineSmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Divider(
                      color: appTheme.gray90016,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 19.h,
                  right: 20.h,
                ),
                child: CustomTextFormField(
                  controller: controller.messageController,
                  hintText: "msg_write_a_message".tr,
                  textInputAction: TextInputAction.done,
                  maxLines: 6,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 14.h,
                    vertical: 17.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.fillGrayTL10,
                  fillColor: appTheme.gray90005,
                ),
              ),
              SizedBox(height: 30.v),
              CustomElevatedButton(
                text: "lbl_send".tr,
                margin: EdgeInsets.only(
                  left: 19.h,
                  right: 20.h,
                ),
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
      title: AppbarSubtitleOne(
        text: "lbl_send_money2".tr,
        margin: EdgeInsets.only(left: 114.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchList() {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 89.v,
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.only(left: 19.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 8.h,
              );
            },
            itemCount: controller
                .sendMoneyModelObj.value.searchlistItemList.value.length,
            itemBuilder: (context, index) {
              SearchlistItemModel model = controller
                  .sendMoneyModelObj.value.searchlistItemList.value[index];
              return SearchlistItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
