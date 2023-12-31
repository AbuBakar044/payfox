import '../tickets_one_page/widgets/framelist_item_widget.dart';
import '../tickets_one_page/widgets/moviedetailslist_item_widget.dart';
import '../tickets_one_page/widgets/viewhierarchyslider_item_widget.dart';
import 'controller/tickets_one_controller.dart';
import 'models/framelist_item_model.dart';
import 'models/moviedetailslist_item_model.dart';
import 'models/tickets_one_model.dart';
import 'models/viewhierarchyslider_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TicketsOnePage extends StatelessWidget {
  TicketsOnePage({Key? key})
      : super(
          key: key,
        );

  TicketsOneController controller =
      Get.put(TicketsOneController(TicketsOneModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 21.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildViewHierarchySlider(),
                      SizedBox(height: 24.v),
                      _buildFrameRow(),
                      SizedBox(height: 10.v),
                      _buildMovieDetailsList(),
                      SizedBox(height: 17.v),
                      Text(
                        "lbl_top_trending".tr,
                        style: CustomTextStyles.labelLarge_1,
                      ),
                      SizedBox(height: 10.v),
                      _buildFrameList(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildViewHierarchySlider() {
    return Padding(
      padding: EdgeInsets.only(right: 20.h),
      child: Obx(
        () => CarouselSlider.builder(
          options: CarouselOptions(
            height: 146.v,
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
          itemCount: controller.ticketsOneModelObj.value
              .viewhierarchysliderItemList.value.length,
          itemBuilder: (context, index, realIndex) {
            ViewhierarchysliderItemModel model = controller.ticketsOneModelObj
                .value.viewhierarchysliderItemList.value[index];
            return ViewhierarchysliderItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow() {
    return Padding(
      padding: EdgeInsets.only(right: 19.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_now_playing".tr,
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
  Widget _buildMovieDetailsList() {
    return SizedBox(
      height: 265.v,
      child: Obx(
        () => ListView.separated(
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
              .ticketsOneModelObj.value.moviedetailslistItemList.value.length,
          itemBuilder: (context, index) {
            MoviedetailslistItemModel model = controller
                .ticketsOneModelObj.value.moviedetailslistItemList.value[index];
            return MoviedetailslistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameList() {
    return SizedBox(
      height: 180.v,
      child: Obx(
        () => ListView.separated(
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
              .ticketsOneModelObj.value.framelistItemList.value.length,
          itemBuilder: (context, index) {
            FramelistItemModel model = controller
                .ticketsOneModelObj.value.framelistItemList.value[index];
            return FramelistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
