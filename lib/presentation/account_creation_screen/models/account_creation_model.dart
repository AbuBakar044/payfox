import '../../../core/app_export.dart';/// This class defines the variables used in the [account_creation_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AccountCreationModel {Rx<DateTime>? selectedEnterYourBirth = Rx(DateTime.now());

Rx<String> enterYourBirth = Rx("Enter your birth date");

 }
