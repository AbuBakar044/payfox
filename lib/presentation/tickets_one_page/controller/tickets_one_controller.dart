import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/tickets_one_page/models/tickets_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TicketsOnePage.
///
/// This class manages the state of the TicketsOnePage, including the
/// current ticketsOneModelObj
class TicketsOneController extends GetxController {
  TicketsOneController(this.ticketsOneModelObj);
  final otpController = TextEditingController();
  Rx<TicketsOneModel> ticketsOneModelObj;

  Rx<int> sliderIndex = 0.obs;
}
