import 'package:abu_s_application3/core/app_export.dart';import 'package:abu_s_application3/presentation/payment_terminal_screen/models/payment_terminal_model.dart';/// A controller class for the PaymentTerminalScreen.
///
/// This class manages the state of the PaymentTerminalScreen, including the
/// current paymentTerminalModelObj
class PaymentTerminalController extends GetxController {Rx<PaymentTerminalModel> paymentTerminalModelObj = PaymentTerminalModel().obs;

 }
