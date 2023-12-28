import 'bloc/create_log_bloc.dart';
import 'models/create_log_model.dart';
import 'package:flutter/material.dart';
import 'package:phm_th_hng_thm_s_application7/core/app_export.dart';
import 'package:phm_th_hng_thm_s_application7/widgets/custom_outlined_button.dart';

class CreateLogScreen extends StatelessWidget {
  const CreateLogScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CreateLogBloc>(
        create: (context) =>
            CreateLogBloc(CreateLogState(createLogModelObj: CreateLogModel()))
              ..add(CreateLogInitialEvent()),
        child: CreateLogScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateLogBloc, CreateLogState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.primary,
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
                                      Expanded(
                                          child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 43.h,
                                                  vertical: 138.v),
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          ImageConstant
                                                              .imgGroup17),
                                                      fit: BoxFit.cover)),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        width: 118.h,
                                                        margin: EdgeInsets.only(
                                                            left: 1.h),
                                                        child: Text(
                                                            "lbl_create_new_log"
                                                                .tr,
                                                            maxLines: 2,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: CustomTextStyles
                                                                .headlineLargeOnPrimaryContainer)),
                                                    SizedBox(height: 106.v),
                                                    Container(
                                                        margin: EdgeInsets.only(
                                                            left: 1.h),
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    67.h,
                                                                vertical: 24.v),
                                                        decoration: AppDecoration
                                                            .fillOnPrimaryContainer
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .circleBorder50),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgClock,
                                                                  height: 50.v,
                                                                  width: 42.h),
                                                              Padding(
                                                                  padding: EdgeInsets
                                                                      .symmetric(
                                                                          vertical: 7
                                                                              .v),
                                                                  child: Text(
                                                                      "lbl_start_now"
                                                                          .tr,
                                                                      style: theme
                                                                          .textTheme
                                                                          .headlineLarge))
                                                            ])),
                                                    SizedBox(height: 30.v),
                                                    Opacity(
                                                        opacity: 0.5,
                                                        child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left:
                                                                        148.h),
                                                            child: Text(
                                                                "lbl_or".tr,
                                                                style: CustomTextStyles
                                                                    .titleLargeOnPrimaryContainerRegular))),
                                                    SizedBox(height: 28.v),
                                                    CustomOutlinedButton(
                                                        height: 70.v,
                                                        text:
                                                            "lbl_create_old_log"
                                                                .tr,
                                                        leftIcon: Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    right: 8.h),
                                                            child: CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgClockOnprimarycontainer,
                                                                height: 21.v,
                                                                width: 25.h)),
                                                        buttonStyle:
                                                            CustomButtonStyles
                                                                .outlineOnPrimaryContainer,
                                                        buttonTextStyle: theme
                                                            .textTheme
                                                            .headlineSmall!,
                                                        onPressed: () {
                                                          onTapCreateOldLog(
                                                              context);
                                                        }),
                                                    SizedBox(height: 28.v)
                                                  ])))
                                    ])))
                      ]))));
    });
  }

  /// Navigates to the firstCreateLogScreen when the action is triggered.
  onTapCreateOldLog(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.firstCreateLogScreen,
    );
  }
}
