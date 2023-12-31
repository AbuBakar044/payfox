import 'package:abu_s_application3/core/app_export.dart';import 'package:abu_s_application3/presentation/tickets_screen/models/tickets_model.dart';import 'package:table_calendar/table_calendar.dart';/// A controller class for the TicketsScreen.
///
/// This class manages the state of the TicketsScreen, including the
/// current ticketsModelObj
class TicketsController extends GetxController {Rx<TicketsModel> ticketsModelObj = TicketsModel().obs;

DateTime? rangeStart;

DateTime? rangeEnd;

DateTime? selectedDay;

Rx<DateTime> focusedDay = DateTime.now().obs;

Rx<RangeSelectionMode> rangeSelectionMode = RangeSelectionMode.toggledOn.obs;

SelectionPopupModel? selectedDropDownValue;

onSelected(dynamic value) { for (var element in ticketsModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} ticketsModelObj.value.dropdownItemList.refresh(); } 
 }
