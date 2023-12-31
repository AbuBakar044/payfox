import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/business_page/models/business_model.dart';

/// A controller class for the BusinessPage.
///
/// This class manages the state of the BusinessPage, including the
/// current businessModelObj
class BusinessController extends GetxController {
  BusinessController(this.businessModelObj);

  Rx<BusinessModel> businessModelObj;
}
