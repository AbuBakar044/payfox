import '../../../core/app_export.dart';/// This class defines the variables used in the [create_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CreateOneModel {Rx<DateTime>? selectedChooseExpiration = Rx(DateTime.now());

Rx<String> chooseExpiration = Rx("Choose expiration date");

 }
