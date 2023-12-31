import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/write_reviews_page/models/write_reviews_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the WriteReviewsPage.
///
/// This class manages the state of the WriteReviewsPage, including the
/// current writeReviewsModelObj
class WriteReviewsController extends GetxController {
  WriteReviewsController(this.writeReviewsModelObj);

  TextEditingController editTextController = TextEditingController();

  Rx<WriteReviewsModel> writeReviewsModelObj;

  @override
  void onClose() {
    super.onClose();
    editTextController.dispose();
  }
}
