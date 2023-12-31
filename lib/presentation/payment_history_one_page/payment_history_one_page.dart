import '../payment_history_one_page/widgets/orderdetails1_item_widget.dart';
import 'controller/payment_history_one_controller.dart';
import 'models/orderdetails1_item_model.dart';
import 'models/payment_history_one_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class PaymentHistoryOnePage extends StatelessWidget {
  PaymentHistoryOnePage({Key? key})
      : super(
          key: key,
        );

  PaymentHistoryOneController controller =
      Get.put(PaymentHistoryOneController(PaymentHistoryOneModel().obs));

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
              _buildSearchSection(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          CustomSearchView(
            controller: controller.searchController,
            hintText: "msg_search_recent_transactions".tr,
            hintStyle: CustomTextStyles.bodyMediumPoppinsBluegray40001,
          ),
          SizedBox(height: 28.v),
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
              itemCount: controller.paymentHistoryOneModelObj.value
                  .orderdetails1ItemList.value.length,
              itemBuilder: (context, index) {
                Orderdetails1ItemModel model = controller
                    .paymentHistoryOneModelObj
                    .value
                    .orderdetails1ItemList
                    .value[index];
                return Orderdetails1ItemWidget(
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
