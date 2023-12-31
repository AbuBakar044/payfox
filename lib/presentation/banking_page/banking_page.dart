import '../banking_page/widgets/blockcard_item_widget.dart';
import '../banking_page/widgets/userprofile5_item_widget.dart';
import '../banking_page/widgets/userprofile6_item_widget.dart';
import 'controller/banking_controller.dart';
import 'models/banking_model.dart';
import 'models/blockcard_item_model.dart';
import 'models/userprofile5_item_model.dart';
import 'models/userprofile6_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abu_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:abu_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abu_s_application3/widgets/custom_elevated_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BankingPage extends StatelessWidget {
  BankingPage({Key? key})
      : super(
          key: key,
        );

  BankingController controller = Get.put(BankingController(BankingModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 22.v),
              _buildView(),
              SizedBox(height: 21.v),
              _buildBlockCard(),
              SizedBox(height: 20.v),
              CustomElevatedButton(
                text: "msg_cash_withdrawals".tr,
                margin: EdgeInsets.symmetric(horizontal: 20.h),
              ),
              SizedBox(height: 28.v),
              _buildFrame(),
              SizedBox(height: 15.v),
              _buildUserProfile(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 42.v,
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_banking".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 9.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildView() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => CarouselSlider.builder(
                options: CarouselOptions(
                  height: 158.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (
                    index,
                    reason,
                  ) {
                    controller.sliderIndex.value = index;
                  },
                ),
                itemCount: controller
                    .bankingModelObj.value.userprofile5ItemList.value.length,
                itemBuilder: (context, index, realIndex) {
                  Userprofile5ItemModel model = controller
                      .bankingModelObj.value.userprofile5ItemList.value[index];
                  return Userprofile5ItemWidget(
                    model,
                  );
                },
              ),
            ),
            SizedBox(height: 16.v),
            CustomImageView(
              imagePath: ImageConstant.imgFrame1171275662,
              height: 3.v,
              width: 83.h,
              margin: EdgeInsets.only(left: 135.h),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBlockCard() {
    return SizedBox(
      height: 90.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 5.h,
            );
          },
          itemCount:
              controller.bankingModelObj.value.blockcardItemList.value.length,
          itemBuilder: (context, index) {
            BlockcardItemModel model =
                controller.bankingModelObj.value.blockcardItemList.value[index];
            return BlockcardItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "msg_recent_cash_withdrawals".tr,
            style: CustomTextStyles.labelLargeGray200_1,
          ),
          Text(
            "lbl_see_more".tr,
            style: CustomTextStyles.labelMediumAmber700,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 8.v,
            );
          },
          itemCount: controller
              .bankingModelObj.value.userprofile6ItemList.value.length,
          itemBuilder: (context, index) {
            Userprofile6ItemModel model = controller
                .bankingModelObj.value.userprofile6ItemList.value[index];
            return Userprofile6ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
