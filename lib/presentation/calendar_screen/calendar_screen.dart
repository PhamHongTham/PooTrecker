import 'bloc/calendar_bloc.dart';
import 'models/calendar_model.dart';
import 'package:flutter/material.dart';
import 'package:phm_th_hng_thm_s_application7/core/app_export.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CalendarBloc>(
        create: (context) =>
            CalendarBloc(CalendarState(calendarModelObj: CalendarModel()))
              ..add(CalendarInitialEvent()),
        child: CalendarScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarBloc, CalendarState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SingleChildScrollView(
                            child: SizedBox(
                                width: double.maxFinite,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                          height: 65.adaptSize,
                                          width: 65.adaptSize,
                                          margin: EdgeInsets.only(top: 963.v),
                                          decoration: BoxDecoration(
                                              color: appTheme.green300)),
                                      Container(
                                          height: 65.adaptSize,
                                          width: 65.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 18.h, top: 963.v),
                                          decoration: BoxDecoration(
                                              color: appTheme.deepOrange400)),
                                      Container(
                                          height: 65.adaptSize,
                                          width: 65.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 18.h, top: 963.v),
                                          decoration: BoxDecoration(
                                              color: appTheme.deepOrangeA100)),
                                      Spacer(),
                                      SizedBox(
                                          height: SizeUtils.height,
                                          width: double.maxFinite,
                                          child: Stack(
                                              alignment: Alignment.topCenter,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: SizedBox(
                                                        height: 1220.v,
                                                        width: double.maxFinite,
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            children: [
                                                              Opacity(
                                                                  opacity: 0.1,
                                                                  child: CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgGroup55,
                                                                      height:
                                                                          612.v,
                                                                      width:
                                                                          414.h,
                                                                      alignment:
                                                                          Alignment
                                                                              .topCenter)),
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgEllipse35168x84,
                                                                  height: 168.v,
                                                                  width: 84.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                  onTap: () {
                                                                    onTapImgImage(
                                                                        context);
                                                                  }),
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgGrid,
                                                                  height: 21
                                                                      .adaptSize,
                                                                  width: 21
                                                                      .adaptSize,
                                                                  alignment:
                                                                      Alignment
                                                                          .topRight,
                                                                  margin: EdgeInsets.only(
                                                                      top:
                                                                          567.v,
                                                                      right:
                                                                          24.h))
                                                            ]))),
                                                Align(
                                                    alignment: Alignment
                                                        .topCenter,
                                                    child: Container(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    20.h,
                                                                vertical: 46.v),
                                                        decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                                image: AssetImage(
                                                                    ImageConstant
                                                                        .imgGroup46),
                                                                fit: BoxFit
                                                                    .cover)),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              _buildArrowDownRow(
                                                                  context),
                                                              SizedBox(
                                                                  height: 49.v),
                                                              _buildNinetyThreeStack(
                                                                  context),
                                                              SizedBox(
                                                                  height: 37.v),
                                                              _buildNinetyFourRow(
                                                                  context),
                                                              SizedBox(
                                                                  height: 40.v),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                  child: Padding(
                                                                      padding: EdgeInsets.only(right: 1.h),
                                                                      child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                                                                        Container(
                                                                            padding:
                                                                                EdgeInsets.symmetric(horizontal: 8.h, vertical: 3.v),
                                                                            decoration: AppDecoration.outlineGray10001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                                                                            child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                              SizedBox(height: 1.v),
                                                                              Text("lbl_1".tr, style: theme.textTheme.titleMedium),
                                                                              SizedBox(height: 5.v),
                                                                              SizedBox(
                                                                                  width: 32.h,
                                                                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                                    Text("lbl_3".tr, style: CustomTextStyles.bodySmallLime800),
                                                                                    CustomImageView(imagePath: ImageConstant.imgGroup14, height: 8.v, width: 21.h, margin: EdgeInsets.only(top: 3.v, bottom: 2.v))
                                                                                  ]))
                                                                            ])),
                                                                        Container(
                                                                            margin:
                                                                                EdgeInsets.only(left: 3.h),
                                                                            padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 3.v),
                                                                            decoration: AppDecoration.outlineGray10001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                                                                            child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                              Text("lbl_2".tr, style: theme.textTheme.titleMedium),
                                                                              SizedBox(height: 5.v),
                                                                              SizedBox(
                                                                                  width: 32.h,
                                                                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                                    Text("lbl_1".tr, style: CustomTextStyles.bodySmallGray700),
                                                                                    CustomImageView(imagePath: ImageConstant.imgGroup16Gray600, height: 7.v, width: 20.h, margin: EdgeInsets.only(top: 4.v, bottom: 3.v))
                                                                                  ]))
                                                                            ]))
                                                                      ]))),
                                                              SizedBox(
                                                                  height: 3.v),
                                                              _buildThreeRow(
                                                                  context),
                                                              SizedBox(
                                                                  height: 3.v),
                                                              Padding(
                                                                  padding: EdgeInsets.only(
                                                                      left: 5.h,
                                                                      right:
                                                                          1.h),
                                                                  child: _buildComponentTwentyThreeRow(
                                                                      context,
                                                                      dynamicTextProp1:
                                                                          "lbl_10"
                                                                              .tr,
                                                                      dynamicTextProp2:
                                                                          "lbl_11"
                                                                              .tr,
                                                                      dynamicTextProp3:
                                                                          "lbl_12"
                                                                              .tr,
                                                                      dynamicTextProp4:
                                                                          "lbl_13"
                                                                              .tr,
                                                                      dynamicTextProp5:
                                                                          "lbl_14"
                                                                              .tr,
                                                                      dynamicTextProp6:
                                                                          "lbl_15"
                                                                              .tr,
                                                                      dynamicTextProp7:
                                                                          "lbl_16"
                                                                              .tr)),
                                                              SizedBox(
                                                                  height: 3.v),
                                                              Padding(
                                                                  padding: EdgeInsets.only(
                                                                      left: 5.h,
                                                                      right:
                                                                          1.h),
                                                                  child: _buildComponentTwentyThreeRow(
                                                                      context,
                                                                      dynamicTextProp1:
                                                                          "lbl_17"
                                                                              .tr,
                                                                      dynamicTextProp2:
                                                                          "lbl_18"
                                                                              .tr,
                                                                      dynamicTextProp3:
                                                                          "lbl_19"
                                                                              .tr,
                                                                      dynamicTextProp4:
                                                                          "lbl_20"
                                                                              .tr,
                                                                      dynamicTextProp5:
                                                                          "lbl_21"
                                                                              .tr,
                                                                      dynamicTextProp6:
                                                                          "lbl_22"
                                                                              .tr,
                                                                      dynamicTextProp7:
                                                                          "lbl_23"
                                                                              .tr)),
                                                              SizedBox(
                                                                  height: 3.v),
                                                              Padding(
                                                                  padding: EdgeInsets.only(
                                                                      left: 5.h,
                                                                      right:
                                                                          1.h),
                                                                  child: _buildComponentTwentyThreeRow(
                                                                      context,
                                                                      dynamicTextProp1:
                                                                          "lbl_24"
                                                                              .tr,
                                                                      dynamicTextProp2:
                                                                          "lbl_25"
                                                                              .tr,
                                                                      dynamicTextProp3:
                                                                          "lbl_26"
                                                                              .tr,
                                                                      dynamicTextProp4:
                                                                          "lbl_27"
                                                                              .tr,
                                                                      dynamicTextProp5:
                                                                          "lbl_28"
                                                                              .tr,
                                                                      dynamicTextProp6:
                                                                          "lbl_29"
                                                                              .tr,
                                                                      dynamicTextProp7:
                                                                          "lbl_30"
                                                                              .tr)),
                                                              SizedBox(
                                                                  height: 3.v),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child: Container(
                                                                      width: 50
                                                                          .adaptSize,
                                                                      margin: EdgeInsets.only(
                                                                          left: 5
                                                                              .h),
                                                                      padding: EdgeInsets.symmetric(
                                                                          horizontal: 9
                                                                              .h,
                                                                          vertical: 5
                                                                              .v),
                                                                      decoration: AppDecoration
                                                                          .outlineGray100011
                                                                          .copyWith(
                                                                              borderRadius: BorderRadiusStyle
                                                                                  .roundedBorder5),
                                                                      child: Text(
                                                                          "lbl_31".tr,
                                                                          style: theme.textTheme.titleMedium))),
                                                              SizedBox(
                                                                  height: 3.v)
                                                            ])))
                                              ]))
                                    ])))
                      ]))));
    });
  }

  /// Section Widget
  Widget _buildArrowDownRow(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v, bottom: 5.v),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgArrowDown,
                    height: 20.v,
                    width: 24.h,
                    margin: EdgeInsets.only(top: 9.v, bottom: 6.v)),
                Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text("lbl_calendar".tr,
                        style: theme.textTheme.headlineLarge))
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgCloseSecondarycontainer,
              height: 44.adaptSize,
              width: 44.adaptSize)
        ]);
  }

  /// Section Widget
  Widget _buildNinetyThreeStack(BuildContext context) {
    return SizedBox(
        height: 24.v,
        width: 334.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Text("lbl_may_2020".tr,
                  style: CustomTextStyles.titleLargeOnPrimary_1)),
          CustomImageView(
              imagePath: ImageConstant.imgGroup92,
              height: 18.v,
              width: 334.h,
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 2.v))
        ]));
  }

  /// Section Widget
  Widget _buildNinetyFourRow(BuildContext context) {
    return Container(
        width: 344.h,
        margin: EdgeInsets.symmetric(horizontal: 15.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("lbl_sun".tr, style: theme.textTheme.bodyLarge),
          Padding(
              padding: EdgeInsets.only(left: 23.h),
              child: Text("lbl_mon".tr, style: theme.textTheme.bodyLarge)),
          Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Text("lbl_tue".tr, style: theme.textTheme.bodyLarge)),
          Padding(
              padding: EdgeInsets.only(left: 23.h),
              child: Text("lbl_wed".tr, style: theme.textTheme.bodyLarge)),
          Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Text("lbl_thu".tr, style: theme.textTheme.bodyLarge)),
          Padding(
              padding: EdgeInsets.only(left: 29.h),
              child: Text("lbl_fri".tr, style: theme.textTheme.bodyLarge)),
          Spacer(),
          Text("lbl_sat".tr, style: theme.textTheme.bodyLarge)
        ]));
  }

  /// Section Widget
  Widget _buildThreeRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h, right: 1.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 3.v),
              decoration: AppDecoration.outlineGray10001
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 1.v),
                    Text("lbl_3".tr, style: theme.textTheme.titleMedium),
                    SizedBox(height: 5.v),
                    SizedBox(
                        width: 32.h,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("lbl_2".tr,
                                  style: CustomTextStyles.bodySmallAmber300),
                              CustomImageView(
                                  imagePath: ImageConstant.imgCloseAmber300,
                                  height: 12.v,
                                  width: 16.h,
                                  margin: EdgeInsets.only(top: 1.v))
                            ]))
                  ])),
          Container(
              margin: EdgeInsets.only(left: 3.h),
              padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 3.v),
              decoration: AppDecoration.outlineGray10001
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 1.v),
                    Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Text("lbl_4".tr,
                            style: theme.textTheme.titleMedium)),
                    SizedBox(height: 6.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgSettingsGray40014x14,
                        height: 14.adaptSize,
                        width: 14.adaptSize)
                  ])),
          Container(
              margin: EdgeInsets.only(left: 3.h),
              padding: EdgeInsets.all(3.h),
              decoration: AppDecoration.outlineGray10001
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 1.v),
                    Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text("lbl_5".tr,
                            style: theme.textTheme.titleMedium)),
                    SizedBox(height: 5.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("lbl_1".tr,
                                  style: CustomTextStyles.bodySmallGray700),
                              CustomImageView(
                                  imagePath: ImageConstant.imgGroup18Gray700,
                                  height: 10.v,
                                  width: 26.h,
                                  margin: EdgeInsets.only(
                                      left: 4.h, top: 2.v, bottom: 2.v))
                            ]))
                  ])),
          GestureDetector(
              onTap: () {
                onTapComponentTwelve(context);
              },
              child: Container(
                  margin: EdgeInsets.only(left: 3.h),
                  padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 3.v),
                  decoration: AppDecoration.outlineGray10001
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 1.v),
                        Text("lbl_6".tr, style: theme.textTheme.titleMedium),
                        SizedBox(height: 5.v),
                        Container(
                            width: 28.h,
                            margin: EdgeInsets.only(right: 4.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("lbl_2".tr,
                                      style: CustomTextStyles.bodySmallGray400),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgVector,
                                      height: 9.v,
                                      width: 14.h,
                                      margin: EdgeInsets.only(
                                          top: 3.v, bottom: 2.v))
                                ]))
                      ]))),
          Container(
              margin: EdgeInsets.only(left: 3.h),
              padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 3.v),
              decoration: AppDecoration.outlinePrimary
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                        width: 35.h,
                        margin: EdgeInsets.only(left: 3.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_7".tr,
                                  style: theme.textTheme.titleMedium),
                              Container(
                                  height: 5.adaptSize,
                                  width: 5.adaptSize,
                                  margin: EdgeInsets.only(bottom: 14.v),
                                  decoration: BoxDecoration(
                                      color: theme.colorScheme.primary,
                                      borderRadius: BorderRadius.circular(2.h)))
                            ])),
                    SizedBox(height: 5.v),
                    Container(
                        width: 34.h,
                        margin: EdgeInsets.only(left: 3.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("lbl_2".tr,
                                  style: CustomTextStyles.bodySmallOrange700),
                              CustomImageView(
                                  imagePath: ImageConstant.imgRectangle19,
                                  height: 7.v,
                                  width: 21.h,
                                  margin:
                                      EdgeInsets.only(top: 4.v, bottom: 3.v))
                            ]))
                  ])),
          Container(
              width: 50.adaptSize,
              margin: EdgeInsets.only(left: 3.h),
              padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 5.v),
              decoration: AppDecoration.outlineGray100011
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
              child: Text("lbl_8".tr, style: theme.textTheme.titleMedium)),
          Container(
              width: 50.adaptSize,
              margin: EdgeInsets.only(left: 3.h),
              padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 5.v),
              decoration: AppDecoration.outlineGray100011
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
              child: Text("lbl_9".tr, style: theme.textTheme.titleMedium))
        ]));
  }

  /// Common widget
  Widget _buildComponentTwentyThreeRow(
    BuildContext context, {
    required String dynamicTextProp1,
    required String dynamicTextProp2,
    required String dynamicTextProp3,
    required String dynamicTextProp4,
    required String dynamicTextProp5,
    required String dynamicTextProp6,
    required String dynamicTextProp7,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          width: 50.adaptSize,
          padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 5.v),
          decoration: AppDecoration.outlineGray100011
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
          child: Text(dynamicTextProp1,
              style: theme.textTheme.titleMedium!
                  .copyWith(color: appTheme.gray70001))),
      Container(
          width: 50.adaptSize,
          margin: EdgeInsets.only(left: 3.h),
          padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 5.v),
          decoration: AppDecoration.outlineGray100011
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
          child: Text(dynamicTextProp2,
              style: theme.textTheme.titleMedium!
                  .copyWith(color: appTheme.gray70001))),
      Container(
          width: 50.adaptSize,
          margin: EdgeInsets.only(left: 3.h),
          padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 5.v),
          decoration: AppDecoration.outlineGray100011
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
          child: Text(dynamicTextProp3,
              style: theme.textTheme.titleMedium!
                  .copyWith(color: appTheme.gray70001))),
      Container(
          width: 50.adaptSize,
          margin: EdgeInsets.only(left: 3.h),
          padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 5.v),
          decoration: AppDecoration.outlineGray100011
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
          child: Text(dynamicTextProp4,
              style: theme.textTheme.titleMedium!
                  .copyWith(color: appTheme.gray70001))),
      Container(
          width: 50.adaptSize,
          margin: EdgeInsets.only(left: 3.h),
          padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 5.v),
          decoration: AppDecoration.outlineGray100011
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
          child: Text(dynamicTextProp5,
              style: theme.textTheme.titleMedium!
                  .copyWith(color: appTheme.gray70001))),
      Container(
          width: 50.adaptSize,
          margin: EdgeInsets.only(left: 3.h),
          padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 5.v),
          decoration: AppDecoration.outlineGray100011
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
          child: Text(dynamicTextProp6,
              style: theme.textTheme.titleMedium!
                  .copyWith(color: appTheme.gray70001))),
      Container(
          width: 50.adaptSize,
          margin: EdgeInsets.only(left: 3.h),
          padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 5.v),
          decoration: AppDecoration.outlineGray100011
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
          child: Text(dynamicTextProp7,
              style: theme.textTheme.titleMedium!
                  .copyWith(color: appTheme.gray70001)))
    ]);
  }

  /// Navigates to the createLogScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.createLogScreen,
    );
  }

  /// Navigates to the detailDayScreen when the action is triggered.
  onTapComponentTwelve(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailDayScreen,
    );
  }
}
