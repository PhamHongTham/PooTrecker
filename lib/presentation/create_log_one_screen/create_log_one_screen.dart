import 'bloc/create_log_one_bloc.dart';
import 'models/create_log_one_model.dart';
import 'package:flutter/material.dart';
import 'package:phm_th_hng_thm_s_application7/core/app_export.dart';
import 'package:phm_th_hng_thm_s_application7/widgets/custom_outlined_button.dart';

class CreateLogOneScreen extends StatelessWidget {
  const CreateLogOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CreateLogOneBloc>(
        create: (context) => CreateLogOneBloc(
            CreateLogOneState(createLogOneModelObj: CreateLogOneModel()))
          ..add(CreateLogOneInitialEvent()),
        child: CreateLogOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateLogOneBloc, CreateLogOneState>(
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
                                      SizedBox(
                                          height: SizeUtils.height,
                                          width: double.maxFinite,
                                          child: Stack(
                                              alignment: Alignment.bottomCenter,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Container(
                                                        padding: EdgeInsets.symmetric(
                                                            horizontal: 44.h,
                                                            vertical: 138.v),
                                                        decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                                image: AssetImage(
                                                                    ImageConstant
                                                                        .imgGroup9),
                                                                fit: BoxFit
                                                                    .cover)),
                                                        child: SizedBox(
                                                            width: 118.h,
                                                            child: Text("lbl_create_new_log".tr,
                                                                maxLines: 2,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: CustomTextStyles
                                                                    .headlineLargeOnPrimaryContainer)))),
                                                Align(
                                                    alignment: Alignment
                                                        .bottomCenter,
                                                    child: Container(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    36.h,
                                                                vertical: 15.v),
                                                        decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                                image: AssetImage(
                                                                    ImageConstant
                                                                        .imgGroup55),
                                                                fit: BoxFit
                                                                    .cover)),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child: Padding(
                                                                      padding: EdgeInsets.only(left: 7.h),
                                                                      child: Row(children: [
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgClockOnprimarycontainer35x29,
                                                                            height: 35.v,
                                                                            width: 29.h,
                                                                            margin: EdgeInsets.only(bottom: 1.v)),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(left: 12.h),
                                                                            child: Text("lbl_10_20_am".tr, style: CustomTextStyles.headlineLargeOnPrimaryContainerRegular))
                                                                      ]))),
                                                              SizedBox(
                                                                  height: 8.v),
                                                              Text(
                                                                  "lbl_10_20_05"
                                                                      .tr,
                                                                  style: CustomTextStyles
                                                                      .robotoOnPrimaryContainer),
                                                              SizedBox(
                                                                  height: 60.v),
                                                              CustomOutlinedButton(
                                                                  height: 70.v,
                                                                  text:
                                                                      "lbl_done"
                                                                          .tr,
                                                                  margin: EdgeInsets.only(
                                                                      left: 7.h,
                                                                      right:
                                                                          8.h),
                                                                  buttonStyle:
                                                                      CustomButtonStyles
                                                                          .outlineOnPrimaryContainer,
                                                                  buttonTextStyle: theme
                                                                      .textTheme
                                                                      .headlineSmall!,
                                                                  onPressed:
                                                                      () {
                                                                    onTapDone(
                                                                        context);
                                                                  }),
                                                              SizedBox(
                                                                  height: 60.v)
                                                            ])))
                                              ]))
                                    ])))
                      ]))));
    });
  }

  /// Navigates to the firstCreateLogScreen when the action is triggered.
  onTapDone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.firstCreateLogScreen,
    );
  }
}
