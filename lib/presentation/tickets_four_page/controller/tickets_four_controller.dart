import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/presentation/tickets_four_page/models/tickets_four_model.dart';

/// A controller class for the TicketsFourPage.
///
/// This class manages the state of the TicketsFourPage, including the
/// current ticketsFourModelObj
class TicketsFourController extends GetxController {
  TicketsFourController(this.ticketsFourModelObj);

  Rx<TicketsFourModel> ticketsFourModelObj;
}
