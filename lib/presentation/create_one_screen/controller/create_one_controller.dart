import 'package:abu_s_application3/core/app_export.dart';import 'package:abu_s_application3/presentation/create_one_screen/models/create_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the CreateOneScreen.
///
/// This class manages the state of the CreateOneScreen, including the
/// current createOneModelObj
class CreateOneController extends GetxController {TextEditingController websiteURLController = TextEditingController();

TextEditingController enterInfoController = TextEditingController();

Rx<CreateOneModel> createOneModelObj = CreateOneModel().obs;

@override void onClose() { super.onClose(); websiteURLController.dispose(); enterInfoController.dispose(); } 
 }
