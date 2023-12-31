import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/receipts_one_screen/models/receipts_one_model.dart';

/// A controller class for the ReceiptsOneScreen.
///
/// This class manages the state of the ReceiptsOneScreen, including the
/// current receiptsOneModelObj
class ReceiptsOneController extends GetxController {
  Rx<ReceiptsOneModel> receiptsOneModelObj = ReceiptsOneModel().obs;
}
