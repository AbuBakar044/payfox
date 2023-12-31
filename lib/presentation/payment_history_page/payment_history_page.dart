import '../payment_history_page/widgets/orderdetails_item_widget.dart';
import 'controller/payment_history_controller.dart';
import 'models/orderdetails_item_model.dart';
import 'models/payment_history_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class PaymentHistoryPage extends StatelessWidget {
  PaymentHistoryPage({Key? key})
      : super(
          key: key,
        );

  PaymentHistoryController controller =
      Get.put(PaymentHistoryController(PaymentHistoryModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onErrorContainer,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              _buildSearchView(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchView() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          CustomSearchView(
            controller: controller.searchController,
            hintText: "msg_search_recent_transactions".tr,
            hintStyle: CustomTextStyles.bodyMediumPoppinsBluegray40001,
          ),
          SizedBox(height: 19.v),
          Obx(
            () => ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.0.v),
                  child: SizedBox(
                    width: 326.h,
                    child: Divider(
                      height: 1.v,
                      thickness: 1.v,
                      color: appTheme.gray90023,
                    ),
                  ),
                );
              },
              itemCount: controller.paymentHistoryModelObj.value
                  .orderdetailsItemList.value.length,
              itemBuilder: (context, index) {
                OrderdetailsItemModel model = controller.paymentHistoryModelObj
                    .value.orderdetailsItemList.value[index];
                return OrderdetailsItemWidget(
                  model,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
