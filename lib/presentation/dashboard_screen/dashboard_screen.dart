import '../dashboard_screen/widgets/typechartcompare_item_widget.dart';
import 'bloc/dashboard_bloc.dart';
import 'models/dashboard_model.dart';
import 'models/typechartcompare_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:phm_th_hng_thm_s_application7/core/app_export.dart';
import 'package:phm_th_hng_thm_s_application7/widgets/custom_elevated_button.dart';
import 'package:phm_th_hng_thm_s_application7/widgets/custom_outlined_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DashboardBloc>(
        create: (context) =>
            DashboardBloc(DashboardState(dashboardModelObj: DashboardModel()))
              ..add(DashboardInitialEvent()),
        child: DashboardScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
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
                                        margin: EdgeInsets.only(
                                            top: 919.v, bottom: 476.v),
                                        decoration: BoxDecoration(
                                            color: appTheme.green300)),
                                    Container(
                                        height: 65.adaptSize,
                                        width: 65.adaptSize,
                                        margin: EdgeInsets.only(
                                            left: 18.h,
                                            top: 919.v,
                                            bottom: 476.v),
                                        decoration: BoxDecoration(
                                            color: appTheme.deepOrange400)),
                                    Container(
                                        height: 65.adaptSize,
                                        width: 65.adaptSize,
                                        margin: EdgeInsets.only(
                                            left: 18.h,
                                            top: 919.v,
                                            bottom: 476.v),
                                        decoration: BoxDecoration(
                                            color: appTheme.deepOrangeA100)),
                                    Spacer(),
                                    SizedBox(
                                        height: 1460.v,
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
                                                                        .imgEllipse35,
                                                                height: 168.v,
                                                                width: 84.h,
                                                                alignment: Alignment
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
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        top: 567
                                                                            .v,
                                                                        right: 24
                                                                            .h)),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child: Container(
                                                                    height: 8.v,
                                                                    margin: EdgeInsets.only(
                                                                        top: 549
                                                                            .v),
                                                                    child: AnimatedSmoothIndicator(
                                                                        activeIndex:
                                                                            0,
                                                                        count:
                                                                            3,
                                                                        effect: ScrollingDotsEffect(
                                                                            spacing:
                                                                                5,
                                                                            activeDotColor:
                                                                                theme.colorScheme.secondaryContainer,
                                                                            dotColor: appTheme.gray100,
                                                                            dotHeight: 8.v,
                                                                            dotWidth: 8.h))))
                                                          ]))),
                                              _buildDashboard(context),
                                              _buildTypeChartCompare(context)
                                            ]))
                                  ])))),
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup46,
                      height: 784.v,
                      width: 414.h,
                      alignment: Alignment.topCenter)
                ]))));
  }

  /// Section Widget
  Widget _buildDashboard(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 19.h, bottom: 1133.v),
            child: IntrinsicWidth(
                child: SizedBox(
                    height: 327.v,
                    width: 395.h,
                    child: Stack(alignment: Alignment.topCenter, children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                              width: 374.h,
                              margin: EdgeInsets.only(
                                  left: 1.h, right: 20.h, bottom: 279.v),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 4.v, bottom: 7.v),
                                        child: Text("lbl_dash_board".tr,
                                            style:
                                                theme.textTheme.headlineLarge)),
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgSettingsOnprimarycontainer,
                                        height: 48.adaptSize,
                                        width: 48.adaptSize)
                                  ]))),
                      Align(
                          alignment: Alignment.topCenter,
                          child: GestureDetector(
                              onTap: () {
                                onTapFive(context);
                              },
                              child: Container(
                                  width: 394.h,
                                  margin: EdgeInsets.only(
                                      left: 1.h, top: 88.v, bottom: 137.v),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                            height: 102.v,
                                            width: 78.h,
                                            child: Stack(
                                                alignment: Alignment.topLeft,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: DottedBorder(
                                                          color:
                                                              appTheme.gray300,
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 1.h,
                                                                  top: 1.v,
                                                                  right: 1.h,
                                                                  bottom: 1.v),
                                                          strokeWidth: 1.h,
                                                          radius:
                                                              Radius.circular(
                                                                  20),
                                                          borderType:
                                                              BorderType.RRect,
                                                          dashPattern: [2, 2],
                                                          child: Container(
                                                              height: 102.v,
                                                              width: 78.h,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20.h))))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 20.h,
                                                                  top: 7.v),
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
                                                                        "lbl_6"
                                                                            .tr,
                                                                        style: theme
                                                                            .textTheme
                                                                            .displaySmall)),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Text(
                                                                        "lbl_mon"
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .bodyLargeGray500Light)),
                                                                SizedBox(
                                                                    height:
                                                                        10.v),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgGroup25,
                                                                    height: 8.v,
                                                                    width: 28.h)
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
                                                        BorderRadius.circular(
                                                            20.h))))
                                      ])))),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 89.h, top: 88.v),
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
                                          horizontal: 11.h, vertical: 6.v),
                                      decoration: AppDecoration.outlineGray300
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder20),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text("lbl_7".tr,
                                                          style: theme.textTheme
                                                              .displaySmall),
                                                      Container(
                                                          height: 7.adaptSize,
                                                          width: 7.adaptSize,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 10.h,
                                                                  top: 4.v,
                                                                  bottom: 30.v),
                                                          decoration: BoxDecoration(
                                                              color: theme
                                                                  .colorScheme
                                                                  .primary,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          3.h)))
                                                    ])),
                                            Text("lbl_tue".tr,
                                                style: CustomTextStyles
                                                    .bodyLargeGray500Light),
                                            SizedBox(height: 10.v),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgGroup26,
                                                height: 8.v,
                                                width: 13.h),
                                            SizedBox(height: 7.v)
                                          ]))))),
                      Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                              padding: EdgeInsets.only(top: 88.v, right: 140.h),
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
                                          horizontal: 22.h, vertical: 6.v),
                                      decoration: AppDecoration.outlineGray300
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder20),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text("lbl_8".tr,
                                                style: theme
                                                    .textTheme.displaySmall),
                                            Text("lbl_wed".tr,
                                                style: CustomTextStyles
                                                    .bodyLargeGray500Light),
                                            SizedBox(height: 10.v),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgGroup27,
                                                height: 8.v,
                                                width: 28.h),
                                            SizedBox(height: 7.v)
                                          ]))))),
                      Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                              padding: EdgeInsets.only(top: 88.v, right: 52.h),
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
                                          horizontal: 24.h, vertical: 6.v),
                                      decoration: AppDecoration.outlineGray300
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder20),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text("lbl_9".tr,
                                                style: theme
                                                    .textTheme.displaySmall),
                                            Text("lbl_thu".tr,
                                                style: CustomTextStyles
                                                    .bodyLargeGray500Light),
                                            SizedBox(height: 10.v),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgVector,
                                                height: 8.v,
                                                width: 13.h),
                                            SizedBox(height: 7.v)
                                          ]))))),
                      Align(
                          alignment: Alignment.bottomLeft,
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Align(
                                alignment: Alignment.centerRight,
                                child: GestureDetector(
                                    onTap: () {
                                      onTapSixtyTwo(context);
                                    },
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgLightBulb,
                                              height: 14.adaptSize,
                                              width: 14.adaptSize,
                                              margin: EdgeInsets.only(
                                                  top: 3.v, bottom: 1.v)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10.h),
                                              child: Text(
                                                  "lbl_view_calendar".tr,
                                                  style: CustomTextStyles
                                                      .bodyLargeSecondaryContainer))
                                        ]))),
                            SizedBox(height: 34.v),
                            SizedBox(
                                width: 374.h,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 14.v, bottom: 11.v),
                                          child: Text("lbl_insight".tr,
                                              style:
                                                  theme.textTheme.titleLarge)),
                                      Spacer(),
                                      CustomElevatedButton(
                                          width: 111.h,
                                          text: "lbl_week".tr,
                                          buttonTextStyle: CustomTextStyles
                                              .titleMediumPoppinsOnPrimaryContainer),
                                      CustomOutlinedButton(
                                          width: 111.h,
                                          text: "lbl_month".tr,
                                          margin: EdgeInsets.only(left: 10.h),
                                          buttonStyle: CustomButtonStyles
                                              .outlineGrayTL251,
                                          buttonTextStyle: CustomTextStyles
                                              .titleMediumPoppinsGray500)
                                    ]))
                          ]))
                    ])))));
  }

  /// Section Widget
  Widget _buildTypeChartCompare(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 359.v),
        child: BlocBuilder<DashboardBloc, DashboardState>(
            builder: (context, state) {
          return CarouselSlider.builder(
              options: CarouselOptions(
                  height: 396.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    state.sliderIndex = index;
                  }),
              itemCount:
                  state.dashboardModelObj?.typechartcompareItemList.length ?? 0,
              itemBuilder: (context, index, realIndex) {
                TypechartcompareItemModel model =
                    state.dashboardModelObj?.typechartcompareItemList[index] ??
                        TypechartcompareItemModel();
                return TypechartcompareItemWidget(model);
              });
        }));
  }

  /// Navigates to the createLogScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.createLogScreen,
    );
  }

  /// Navigates to the detailDayScreen when the action is triggered.
  onTapFive(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailDayScreen,
    );
  }

  /// Navigates to the calendarScreen when the action is triggered.
  onTapSixtyTwo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.calendarScreen,
    );
  }
}
