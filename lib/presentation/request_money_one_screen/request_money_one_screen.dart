import '../request_money_one_screen/widgets/requestmoneyone_item_widget.dart';
import 'controller/request_money_one_controller.dart';
import 'models/requestmoneyone_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:abu_s_application3/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RequestMoneyOneScreen extends GetWidget<RequestMoneyOneController> {
  const RequestMoneyOneScreen({Key? key})
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
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 9.v,
          ),
          child: Column(
            children: [
              CustomSearchView(
                controller: controller.searchController,
                hintText: "msg_courtney_johnson".tr,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 30.h,
                  vertical: 13.v,
                ),
                borderDecoration: SearchViewStyleHelper.fillGray,
                fillColor: appTheme.gray90024,
              ),
              SizedBox(height: 30.v),
              _buildRequestMoneyOne(),
              SizedBox(height: 53.v),
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
        text: "lbl_request_money".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildRequestMoneyOne() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_select_contact".tr,
          style: CustomTextStyles.labelLargeGray200_1,
        ),
        SizedBox(height: 11.v),
        Obx(
          () => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 81.v,
              crossAxisCount: 4,
              mainAxisSpacing: 7.h,
              crossAxisSpacing: 7.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller.requestMoneyOneModelObj.value
                .requestmoneyoneItemList.value.length,
            itemBuilder: (context, index) {
              RequestmoneyoneItemModel model = controller
                  .requestMoneyOneModelObj
                  .value
                  .requestmoneyoneItemList
                  .value[index];
              return RequestmoneyoneItemWidget(
                model,
              );
            },
          ),
        ),
      ],
    );
  }
}
