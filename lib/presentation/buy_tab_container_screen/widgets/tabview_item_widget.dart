import '../controller/buy_tab_container_controller.dart';
import '../models/tabview_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TabviewItemWidget extends StatefulWidget {
  TabviewItemWidget(
    this.tabviewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TabviewItemModel tabviewItemModelObj;

  @override
  State<TabviewItemWidget> createState() => _TabviewItemWidgetState();
}

class _TabviewItemWidgetState extends State<TabviewItemWidget> with SingleTickerProviderStateMixin{
  var controller = Get.find<BuyTabContainerController>();

  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController =
        TabController(length: 3, vsync: this); // Now we have a TickerProvider
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 21.v,
      width: 353.h,
      child: TabBar(
        controller: tabController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onPrimary.withOpacity(1),
        unselectedLabelColor: theme.colorScheme.onPrimary.withOpacity(0.65),
        tabs: [
          Tab(
            child: Text(
              "msg_unsettled_payments".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_completed".tr,
            ),
          ),
        ],
      ),
    );
  }
}
