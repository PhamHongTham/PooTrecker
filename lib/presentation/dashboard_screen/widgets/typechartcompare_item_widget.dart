import '../models/typechartcompare_item_model.dart';
import 'package:flutter/material.dart';
import 'package:phm_th_hng_thm_s_application7/core/app_export.dart';

// ignore: must_be_immutable
class TypechartcompareItemWidget extends StatelessWidget {
  TypechartcompareItemWidget(
    this.typechartcompareItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TypechartcompareItemModel typechartcompareItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          Text(
            "msg_type_chart_compare".tr,
            style: CustomTextStyles.titleMediumOnPrimary,
          ),
          SizedBox(height: 27.v),
          SizedBox(
            height: 288.adaptSize,
            width: 288.adaptSize,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Opacity(
                  opacity: 0.3,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 288.adaptSize,
                      width: 288.adaptSize,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary.withOpacity(0.46),
                        borderRadius: BorderRadius.circular(
                          144.h,
                        ),
                        border: Border.all(
                          color: theme.colorScheme.onPrimaryContainer,
                          width: 2.h,
                          strokeAlign: strokeAlignOutside,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 288.adaptSize,
                    width: 288.adaptSize,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Opacity(
                          opacity: 0.3,
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 288.adaptSize,
                              width: 288.adaptSize,
                              decoration: BoxDecoration(
                                color:
                                    theme.colorScheme.primary.withOpacity(0.46),
                                borderRadius: BorderRadius.circular(
                                  144.h,
                                ),
                                border: Border.all(
                                  color: theme.colorScheme.onPrimaryContainer,
                                  width: 2.h,
                                  strokeAlign: strokeAlignOutside,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 288.adaptSize,
                            width: 288.adaptSize,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Opacity(
                                  opacity: 0.5,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 288.adaptSize,
                                      width: 288.adaptSize,
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.primary
                                            .withOpacity(0.53),
                                        borderRadius: BorderRadius.circular(
                                          144.h,
                                        ),
                                        border: Border.all(
                                          color: theme
                                              .colorScheme.onPrimaryContainer
                                              .withOpacity(0.53),
                                          width: 2.h,
                                          strokeAlign: strokeAlignOutside,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    height: 288.adaptSize,
                                    width: 288.adaptSize,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Opacity(
                                          opacity: 0.8,
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                              height: 288.adaptSize,
                                              width: 288.adaptSize,
                                              decoration: BoxDecoration(
                                                color: theme.colorScheme.primary
                                                    .withOpacity(0.64),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  144.h,
                                                ),
                                                border: Border.all(
                                                  color: theme.colorScheme
                                                      .onPrimaryContainer
                                                      .withOpacity(0.64),
                                                  width: 2.h,
                                                  strokeAlign:
                                                      strokeAlignOutside,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                            height: 154.adaptSize,
                                            width: 154.adaptSize,
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                    height: 154.adaptSize,
                                                    width: 154.adaptSize,
                                                    decoration: BoxDecoration(
                                                      color: theme.colorScheme
                                                          .onPrimaryContainer
                                                          .withOpacity(1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        77.h,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 29.h),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Text(
                                                          "lbl_type_01".tr,
                                                          style: CustomTextStyles
                                                              .bodyLargePrimary,
                                                        ),
                                                        Text(
                                                          "lbl_40".tr,
                                                          style: theme.textTheme
                                                              .displayMedium,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 44.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 10.adaptSize,
                width: 10.adaptSize,
                margin: EdgeInsets.only(
                  top: 2.v,
                  bottom: 4.v,
                ),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "lbl_type_01".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              Container(
                height: 10.adaptSize,
                width: 10.adaptSize,
                margin: EdgeInsets.only(
                  left: 22.h,
                  top: 2.v,
                  bottom: 4.v,
                ),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "lbl_type_02".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              Container(
                height: 10.adaptSize,
                width: 10.adaptSize,
                margin: EdgeInsets.only(
                  left: 20.h,
                  top: 2.v,
                  bottom: 4.v,
                ),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "lbl_type_03".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              Container(
                height: 10.adaptSize,
                width: 10.adaptSize,
                margin: EdgeInsets.only(
                  left: 20.h,
                  top: 2.v,
                  bottom: 4.v,
                ),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "lbl_type_04".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
