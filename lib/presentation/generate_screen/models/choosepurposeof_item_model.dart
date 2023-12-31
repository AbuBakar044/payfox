import '../../../core/app_export.dart';/// This class is used in the [choosepurposeof_item_widget] screen.
class ChoosepurposeofItemModel {ChoosepurposeofItemModel({this.emailText, this.id, }) { emailText = emailText  ?? Rx("Email");id = id  ?? Rx(""); }

Rx<String>? emailText;

Rx<String>? id;

 }
