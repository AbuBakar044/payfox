import 'controller/payment_controller.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/homepage_page/homepage_page.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_bottom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PaymentScreen extends GetWidget<PaymentController> {
  const PaymentScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          height: 670.v,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 19.v,
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 104.v),
                  child: SizedBox(
                    width: 321.h,
                    child: Divider(
                      color: appTheme.gray90009,
                    ),
                  ),
                ),
              ),
              _buildPayAtCheckoutColumn(),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomAppBar(),
        floatingActionButton: CustomFloatingButton(
          height: 48,
          width: 48,
          backgroundColor: appTheme.deepPurpleA200,
          child: CustomImageView(
            imagePath: ImageConstant.imgSave,
            height: 24.0.v,
            width: 24.0.h,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 48.v,
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_payment2".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildPayAtCheckoutColumn() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillGray90009.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 4.v),
            _buildPayLaterColumn(
              purpleThumbsUpImage: ImageConstant.imgTelevision16x16,
              payLaterText: "lbl_send_money".tr,
            ),
            SizedBox(height: 11.v),
            _buildSendMoneyRow(
              televisionImage: ImageConstant.imgTelevision16x16,
              requestMoneyText: "lbl_request_money2".tr,
            ),
            SizedBox(height: 8.v),
            Divider(),
            SizedBox(height: 11.v),
            _buildPayLaterColumn(
              purpleThumbsUpImage: ImageConstant.imgThumbsUpPurple10016x16,
              payLaterText: "lbl_pay_later".tr,
            ),
            SizedBox(height: 11.v),
            _buildSendMoneyRow(
              televisionImage: ImageConstant.imgGrid,
              requestMoneyText: "lbl_qr_payment".tr,
            ),
            SizedBox(height: 8.v),
            Divider(),
            SizedBox(height: 11.v),
            _buildPayLaterColumn(
              purpleThumbsUpImage: ImageConstant.imgSettingsPurple100,
              payLaterText: "lbl_cash_withdrawal".tr,
            ),
            SizedBox(height: 11.v),
            _buildPayLaterColumn(
              purpleThumbsUpImage: ImageConstant.imgTelevision1,
              payLaterText: "lbl_split_bill".tr,
            ),
            SizedBox(height: 11.v),
            _buildSendMoneyRow(
              televisionImage: ImageConstant.imgForward,
              requestMoneyText: "lbl_pay_at_checkout".tr,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomAppBar() {
    return CustomBottomAppBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  /// Common widget
  Widget _buildSendMoneyRow({
    required String televisionImage,
    required String requestMoneyText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 35.adaptSize,
          width: 35.adaptSize,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgThumbsUp,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 35.adaptSize,
                  width: 35.adaptSize,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPlay,
                        height: 35.adaptSize,
                        width: 35.adaptSize,
                        alignment: Alignment.center,
                      ),
                      CustomImageView(
                        imagePath: televisionImage,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 8.h,
            top: 11.v,
            bottom: 7.v,
          ),
          child: Text(
            requestMoneyText,
            style: theme.textTheme.labelLarge!.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(1),
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            left: 157.h,
            top: 3.v,
            bottom: 8.v,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildPayLaterColumn({
    required String purpleThumbsUpImage,
    required String payLaterText,
  }) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 35.adaptSize,
              width: 35.adaptSize,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbsUp,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 35.adaptSize,
                      width: 35.adaptSize,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgPlay,
                            height: 35.adaptSize,
                            width: 35.adaptSize,
                            alignment: Alignment.center,
                          ),
                          CustomImageView(
                            imagePath: purpleThumbsUpImage,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                top: 11.v,
                bottom: 7.v,
              ),
              child: Text(
                payLaterText,
                style: theme.textTheme.labelLarge!.copyWith(
                  color: theme.colorScheme.onPrimary.withOpacity(1),
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(
                left: 199.h,
                top: 3.v,
                bottom: 8.v,
              ),
            ),
          ],
        ),
        SizedBox(height: 8.v),
        Divider(),
      ],
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homepagePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homepagePage:
        return HomepagePage();
      default:
        return DefaultWidget();
    }
  }
}
