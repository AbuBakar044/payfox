import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/receipt_one_screen/models/receipt_one_model.dart';

/// A controller class for the ReceiptOneScreen.
///
/// This class manages the state of the ReceiptOneScreen, including the
/// current receiptOneModelObj
class ReceiptOneController extends GetxController {
  Rx<ReceiptOneModel> receiptOneModelObj = ReceiptOneModel().obs;
}
