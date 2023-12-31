import '../../../core/app_export.dart';/// This class is used in the [paymentmethodlist_item_widget] screen.
class PaymentmethodlistItemModel {PaymentmethodlistItemModel({this.paymentMethodIcon, this.paymentMethodName, this.paymentAmount, this.id, }) { paymentMethodIcon = paymentMethodIcon  ?? Rx(ImageConstant.imgPaypal);paymentMethodName = paymentMethodName  ?? Rx("Paypal");paymentAmount = paymentAmount  ?? Rx("45,000.00");id = id  ?? Rx(""); }

Rx<String>? paymentMethodIcon;

Rx<String>? paymentMethodName;

Rx<String>? paymentAmount;

Rx<String>? id;

 }
