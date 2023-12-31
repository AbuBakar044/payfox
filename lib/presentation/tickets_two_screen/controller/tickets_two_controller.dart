import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/tickets_two_screen/models/tickets_two_model.dart';

/// A controller class for the TicketsTwoScreen.
///
/// This class manages the state of the TicketsTwoScreen, including the
/// current ticketsTwoModelObj
class TicketsTwoController extends GetxController {
  Rx<TicketsTwoModel> ticketsTwoModelObj = TicketsTwoModel().obs;
}
