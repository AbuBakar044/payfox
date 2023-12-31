import 'package:abu_s_application3/core/app_export.dart';import 'package:abu_s_application3/presentation/product_screen/models/product_model.dart';/// A controller class for the ProductScreen.
///
/// This class manages the state of the ProductScreen, including the
/// current productModelObj
class ProductController extends GetxController {Rx<ProductModel> productModelObj = ProductModel().obs;

 }
