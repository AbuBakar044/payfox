import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/parking_two_screen/models/parking_two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ParkingTwoScreen.
///
/// This class manages the state of the ParkingTwoScreen, including the
/// current parkingTwoModelObj
class ParkingTwoController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<ParkingTwoModel> parkingTwoModelObj = ParkingTwoModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
