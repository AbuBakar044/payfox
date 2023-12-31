import '../my_linked_account_page/widgets/paymentmethodlist_item_widget.dart';
import 'controller/my_linked_account_controller.dart';
import 'models/my_linked_account_model.dart';
import 'models/paymentmethodlist_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

class MyLinkedAccountPage extends StatelessWidget {
  MyLinkedAccountPage({Key? key})
      : super(
          key: key,
        );

  MyLinkedAccountController controller =
      Get.put(MyLinkedAccountController(MyLinkedAccountModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 36.v),
              _buildPaymentMethodList(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentMethodList() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 24.h,
      ),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 12.v,
            );
          },
          itemCount: controller.myLinkedAccountModelObj.value
              .paymentmethodlistItemList.value.length,
          itemBuilder: (context, index) {
            PaymentmethodlistItemModel model = controller
                .myLinkedAccountModelObj
                .value
                .paymentmethodlistItemList
                .value[index];
            return PaymentmethodlistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
