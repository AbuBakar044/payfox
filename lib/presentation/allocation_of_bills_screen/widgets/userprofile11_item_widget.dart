import '../controller/allocation_of_bills_controller.dart';
import '../models/userprofile11_item_model.dart';
import 'package:abu_s_application3/core/app_export.dart';
import 'package:abu_s_application3/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile11ItemWidget extends StatelessWidget {
  Userprofile11ItemWidget(
    this.userprofile11ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile11ItemModel userprofile11ItemModelObj;

  var controller = Get.find<AllocationOfBillsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 152.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => CustomImageView(
                          imagePath: userprofile11ItemModelObj.userImage!.value,
                          height: 39.adaptSize,
                          width: 39.adaptSize,
                          radius: BorderRadius.circular(
                            19.h,
                          ),
                          margin: EdgeInsets.only(
                            top: 1.v,
                            bottom: 4.v,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(
                            () => Text(
                              userprofile11ItemModelObj
                                  .courtneyWillPayText!.value,
                              style:
                                  CustomTextStyles.labelLargePoppinsGray50004,
                            ),
                          ),
                          SizedBox(height: 4.v),
                          Obx(
                            () => Text(
                              userprofile11ItemModelObj.twentyText!.value,
                              style: CustomTextStyles
                                  .titleSmallPoppinsBluegray10003,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 9.v,
                    bottom: 12.v,
                  ),
                  child: Obx(
                    () => Text(
                      userprofile11ItemModelObj.amountText!.value,
                      style:
                          CustomTextStyles.titleSmallPoppinsGray20001SemiBold15,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          SizedBox(
            height: 12.v,
            width: 321.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                SliderTheme(
                  data: SliderThemeData(
                    trackShape: RoundedRectSliderTrackShape(),
                    activeTrackColor:
                        theme.colorScheme.onPrimary.withOpacity(1),
                    inactiveTrackColor: appTheme.gray90009,
                    thumbColor: appTheme.amber700,
                    thumbShape: RoundSliderThumbShape(),
                  ),
                  child: Slider(
                    value: 28.35,
                    min: 0.0,
                    max: 100.0,
                    onChanged: (value) {},
                  ),
                ),
                Obx(
                  () => CustomSwitch(
                    alignment: Alignment.centerLeft,
                    value: userprofile11ItemModelObj.isSelectedSwitch!.value,
                    onChange: (value) {
                      userprofile11ItemModelObj.isSelectedSwitch!.value = value;
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
