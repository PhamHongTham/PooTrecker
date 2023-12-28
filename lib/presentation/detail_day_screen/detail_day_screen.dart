import 'bloc/detail_day_bloc.dart';
import 'models/detail_day_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:phm_th_hng_thm_s_application7/core/app_export.dart';

class DetailDayScreen extends StatelessWidget {
  const DetailDayScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DetailDayBloc>(
        create: (context) =>
            DetailDayBloc(DetailDayState(detailDayModelObj: DetailDayModel()))
              ..add(DetailDayInitialEvent()),
        child: DetailDayScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailDayBloc, DetailDayState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  height: SizeUtils.height,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgGroup46,
                        height: 784.v,
                        width: 414.h,
                        alignment: Alignment.topCenter),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: SingleChildScrollView(
                            child: SizedBox(
                                width: double.maxFinite,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                          height: 65.adaptSize,
                                          width: 65.adaptSize,
                                          margin: EdgeInsets.only(top: 917.v),
                                          decoration: BoxDecoration(
                                              color: appTheme.green300)),
                                      Container(
                                          height: 65.adaptSize,
                                          width: 65.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 18.h, top: 917.v),
                                          decoration: BoxDecoration(
                                              color: appTheme.deepOrange400)),
                                      Container(
                                          height: 65.adaptSize,
                                          width: 65.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 18.h, top: 917.v),
                                          decoration: BoxDecoration(
                                              color: appTheme.deepOrangeA100)),
                                      Spacer(),
                                      _buildUserProfile(context)
                                    ]))))
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(bottom: 48.v),
        child: IntrinsicWidth(
            child: SizedBox(
                height: 934.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                          height: 188.v,
                          width: 394.h,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                        width: 374.h,
                                        margin: EdgeInsets.only(
                                            right: 20.h, bottom: 144.v),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgArrowDownPrimary,
                                              height: 20.v,
                                              width: 24.h,
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 12.v)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 16.h,
                                                  top: 5.v,
                                                  bottom: 2.v),
                                              child: Text("lbl_daily_report".tr,
                                                  style: theme.textTheme
                                                      .headlineLarge)),
                                          Spacer(),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgCloseSecondarycontainer,
                                              height: 44.adaptSize,
                                              width: 44.adaptSize)
                                        ]))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        width: 394.h,
                                        margin: EdgeInsets.only(top: 86.v),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizedBox(
                                                  height: 102.v,
                                                  width: 78.h,
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                                height: 102.v,
                                                                width: 78.h,
                                                                decoration: BoxDecoration(
                                                                    color: theme
                                                                        .colorScheme
                                                                        .primary,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20.h)))),
                                                        Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 20
                                                                            .h,
                                                                        top: 7
                                                                            .v),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              right: 4
                                                                                  .h),
                                                                          child: Text(
                                                                              "lbl_6".tr,
                                                                              style: CustomTextStyles.displaySmallOnPrimaryContainer)),
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .centerLeft,
                                                                          child: Text(
                                                                              "lbl_mon".tr,
                                                                              style: CustomTextStyles.bodyLargeOnPrimaryContainerLight)),
                                                                      SizedBox(
                                                                          height:
                                                                              10.v),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgGroup32,
                                                                          height: 8
                                                                              .v,
                                                                          width:
                                                                              28.h)
                                                                    ])))
                                                      ])),
                                              DottedBorder(
                                                  color: appTheme.gray300,
                                                  padding: EdgeInsets.only(
                                                      left: 1.h,
                                                      top: 1.v,
                                                      right: 1.h,
                                                      bottom: 1.v),
                                                  strokeWidth: 1.h,
                                                  radius: Radius.circular(20),
                                                  borderType: BorderType.RRect,
                                                  dashPattern: [2, 2],
                                                  child: Container(
                                                      height: 102.v,
                                                      width: 78.h,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.h))))
                                            ]))),
                                Padding(
                                    padding: EdgeInsets.only(left: 88.h),
                                    child: _buildRecentOrders(context)),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 140.h),
                                        child: DottedBorder(
                                            color: appTheme.gray300,
                                            padding: EdgeInsets.only(
                                                left: 1.h,
                                                top: 1.v,
                                                right: 1.h,
                                                bottom: 1.v),
                                            strokeWidth: 1.h,
                                            radius: Radius.circular(20),
                                            borderType: BorderType.RRect,
                                            dashPattern: [2, 2],
                                            child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 22.h,
                                                    vertical: 6.v),
                                                decoration: AppDecoration
                                                    .outlineGray300
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder20),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text("lbl_8".tr,
                                                          style: theme.textTheme
                                                              .displaySmall),
                                                      Text("lbl_wed".tr,
                                                          style: CustomTextStyles
                                                              .bodyLargeGray500Light),
                                                      SizedBox(height: 10.v),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgGroup27,
                                                          height: 8.v,
                                                          width: 28.h),
                                                      SizedBox(height: 7.v)
                                                    ]))))),
                                Padding(
                                    padding: EdgeInsets.only(right: 52.h),
                                    child: _buildRecentOrders(context))
                              ]))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                          height: 696.v,
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Opacity(
                                    opacity: 0.1,
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgGroup55,
                                        height: 612.v,
                                        width: 414.h,
                                        alignment: Alignment.topCenter)),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        margin: EdgeInsets.only(bottom: 84.v),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 37.h, vertical: 35.v),
                                        decoration: AppDecoration.light,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 1.h),
                                                  child: Text("lbl_memo".tr,
                                                      style: theme.textTheme
                                                          .titleLarge)),
                                              SizedBox(height: 23.v),
                                              Container(
                                                  width: 328.h,
                                                  margin: EdgeInsets.only(
                                                      right: 11.h),
                                                  child: Text(
                                                      "msg_lorem_ipsum_dolor"
                                                          .tr,
                                                      maxLines: 3,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: CustomTextStyles
                                                          .bodyLargeOnPrimary
                                                          .copyWith(
                                                              height: 1.75))),
                                              SizedBox(height: 8.v),
                                              Container(
                                                  height: 56.v,
                                                  width: 65.h,
                                                  margin: EdgeInsets.only(
                                                      left: 1.h),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 18.h,
                                                      vertical: 17.v),
                                                  decoration: AppDecoration
                                                      .outlineGray
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10),
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgArrowUp,
                                                      height: 20.v,
                                                      width: 25.h,
                                                      alignment:
                                                          Alignment.center)),
                                              SizedBox(height: 8.v)
                                            ]))),
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse351,
                                    height: 168.v,
                                    width: 84.h,
                                    alignment: Alignment.bottomRight,
                                    onTap: () {
                                      onTapImgImage(context);
                                    }),
                                CustomImageView(
                                    imagePath: ImageConstant.imgGrid,
                                    height: 21.adaptSize,
                                    width: 21.adaptSize,
                                    alignment: Alignment.bottomRight,
                                    margin: EdgeInsets.only(
                                        right: 24.h, bottom: 108.v))
                              ]))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 59.h),
                          child: SizedBox(
                              height: 574.v,
                              child: VerticalDivider(
                                  width: 1.h,
                                  thickness: 1.v,
                                  color: theme.colorScheme.primary,
                                  indent: 188.h)))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          margin: EdgeInsets.only(
                              left: 20.h, top: 238.v, right: 20.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 22.h, vertical: 15.v),
                          decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder20),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Padding(
                                padding: EdgeInsets.only(left: 9.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgGroup14,
                                          height: 24.v,
                                          width: 59.h,
                                          margin: EdgeInsets.only(
                                              top: 18.v, bottom: 17.v)),
                                      _buildDoctorReviews(context,
                                          timeLabel: "lbl_10_05_pm".tr,
                                          counterLabel: "lbl_25_c".tr,
                                          oLabel: "lbl_o".tr,
                                          separateHardLumpsLabel:
                                              "msg_separate_hard_lumps".tr)
                                    ])),
                            SizedBox(height: 20.v),
                            Container(
                                height: 7.v,
                                width: 327.h,
                                decoration: BoxDecoration(
                                    color: appTheme.gray500,
                                    borderRadius: BorderRadius.circular(3.h)),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(3.h),
                                    child: LinearProgressIndicator(
                                        value: 0.69,
                                        backgroundColor: appTheme.gray500))),
                            SizedBox(height: 7.v),
                            Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: _buildClientTestimonials(context,
                                    timeLabel1: "lbl_10_05".tr,
                                    timeLabel2: "lbl_total_30min".tr,
                                    timeLabel3: "lbl_10_35".tr,
                                    timeLabel4: "lbl_max_40min".tr))
                          ]))),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 22.h, vertical: 15.v),
                          decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder20),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Padding(
                                padding: EdgeInsets.only(left: 7.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgGroup18Gray700,
                                          height: 24.v,
                                          width: 62.h,
                                          margin: EdgeInsets.only(
                                              top: 18.v, bottom: 17.v)),
                                      _buildDoctorReviews(context,
                                          timeLabel: "lbl_08_20_am".tr,
                                          counterLabel: "lbl_25_c".tr,
                                          oLabel: "lbl_o".tr,
                                          separateHardLumpsLabel:
                                              "msg_separate_hard_lumps".tr)
                                    ])),
                            SizedBox(height: 20.v),
                            Container(
                                height: 7.v,
                                width: 327.h,
                                decoration: BoxDecoration(
                                    color: appTheme.gray500,
                                    borderRadius: BorderRadius.circular(3.h)),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(3.h),
                                    child: LinearProgressIndicator(
                                        value: 0.52,
                                        backgroundColor: appTheme.gray500))),
                            SizedBox(height: 7.v),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: _buildClientTestimonials(context,
                                    timeLabel1: "lbl_08_20".tr,
                                    timeLabel2: "lbl_total_20min".tr,
                                    timeLabel3: "lbl_08_40".tr,
                                    timeLabel4: "lbl_max_40min".tr))
                          ])))
                ]))));
  }

  /// Common widget
  Widget _buildRecentOrders(BuildContext context) {
    return DottedBorder(
        color: appTheme.gray300,
        padding: EdgeInsets.only(left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
        strokeWidth: 1.h,
        radius: Radius.circular(20),
        borderType: BorderType.RRect,
        dashPattern: [2, 2],
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 6.v),
            decoration: AppDecoration.outlineGray300
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Text("lbl_9".tr, style: theme.textTheme.displaySmall),
              Text("lbl_thu".tr, style: CustomTextStyles.bodyLargeGray500Light),
              SizedBox(height: 10.v),
              CustomImageView(
                  imagePath: ImageConstant.imgVector, height: 8.v, width: 13.h),
              SizedBox(height: 7.v)
            ])));
  }

  /// Common widget
  Widget _buildDoctorReviews(
    BuildContext context, {
    required String timeLabel,
    required String counterLabel,
    required String oLabel,
    required String separateHardLumpsLabel,
  }) {
    return Column(children: [
      Align(
          alignment: Alignment.centerRight,
          child: Padding(
              padding: EdgeInsets.only(right: 3.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 3.v),
                        child: Text(timeLabel,
                            style: CustomTextStyles.bodyLargePoppinsGray500
                                .copyWith(color: appTheme.gray500))),
                    Container(
                        height: 27.v,
                        width: 36.h,
                        margin: EdgeInsets.only(left: 9.h),
                        child: Stack(alignment: Alignment.topRight, children: [
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(counterLabel,
                                  style: CustomTextStyles
                                      .bodyLargePoppinsGray500
                                      .copyWith(color: appTheme.gray500))),
                          Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                  padding: EdgeInsets.only(right: 11.h),
                                  child: Text(oLabel,
                                      style: CustomTextStyles
                                          .bodySmallPoppinsGray500
                                          .copyWith(color: appTheme.gray500))))
                        ])),
                    CustomImageView(
                        imagePath: ImageConstant.imgGroup,
                        height: 16.v,
                        width: 21.h,
                        margin:
                            EdgeInsets.only(left: 16.h, top: 3.v, bottom: 6.v))
                  ]))),
      SizedBox(height: 8.v),
      Text(separateHardLumpsLabel,
          style: CustomTextStyles.titleLargeOnPrimary
              .copyWith(color: theme.colorScheme.onPrimary))
    ]);
  }

  /// Common widget
  Widget _buildClientTestimonials(
    BuildContext context, {
    required String timeLabel1,
    required String timeLabel2,
    required String timeLabel3,
    required String timeLabel4,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(timeLabel1,
          style: CustomTextStyles.bodySmallSecondaryContainer
              .copyWith(color: theme.colorScheme.secondaryContainer)),
      Spacer(flex: 19),
      Text(timeLabel2,
          style: CustomTextStyles.bodySmallLight
              .copyWith(color: appTheme.gray70001)),
      Spacer(flex: 21),
      Text(timeLabel3,
          style: CustomTextStyles.bodySmallPrimary
              .copyWith(color: theme.colorScheme.primary)),
      Spacer(flex: 59),
      Text(timeLabel4,
          style: CustomTextStyles.bodySmallLight
              .copyWith(color: appTheme.gray70001))
    ]);
  }

  /// Navigates to the createLogScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.createLogScreen,
    );
  }
}
