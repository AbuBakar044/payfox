import 'controller/currency_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CurrencyScreen extends GetWidget<CurrencyController> {
  const CurrencyScreen({Key? key})
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
            vertical: 19.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSearchView(
                controller: controller.searchController,
                hintText: "lbl_search_currency".tr,
                hintStyle: CustomTextStyles.bodyMediumBluegray40001,
                contentPadding: EdgeInsets.only(
                  left: 16.h,
                  top: 18.v,
                  bottom: 18.v,
                ),
              ),
              SizedBox(height: 20.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgYen,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 5.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "lbl_japenese_yen".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.v),
              Divider(
                color: appTheme.gray90004,
              ),
              SizedBox(height: 11.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCent,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 4.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_cent".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.v),
              Divider(
                color: appTheme.gray90004,
              ),
              SizedBox(height: 11.v),
              _buildCurrencyRow(
                euroImage: ImageConstant.imgUsDollarCircled,
                euroLabel: "lbl_usd".tr,
              ),
              SizedBox(height: 12.v),
              Divider(
                color: appTheme.gray90004,
              ),
              SizedBox(height: 11.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgSwissFranc,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 4.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_swiss_franc".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.v),
              Divider(
                color: appTheme.gray90004,
              ),
              SizedBox(height: 11.v),
              _buildCurrencyRow(
                euroImage: ImageConstant.imgEuro,
                euroLabel: "lbl_euro".tr,
              ),
              SizedBox(height: 12.v),
              Divider(
                color: appTheme.gray90004,
              ),
              SizedBox(height: 11.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRuble,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 5.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "lbl_ruby".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.v),
              Divider(
                color: appTheme.gray90004,
              ),
              SizedBox(height: 11.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgTurkishLira,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 4.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_turkish_lira".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
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
        text: "msg_currency_display".tr,
      ),
    );
  }

  /// Common widget
  Widget _buildCurrencyRow({
    required String euroImage,
    required String euroLabel,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: euroImage,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 8.h,
            top: 4.v,
            bottom: 3.v,
          ),
          child: Text(
            euroLabel,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(1),
            ),
          ),
        ),
      ],
    );
  }
}
