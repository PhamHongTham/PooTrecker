import 'bloc/first_create_log_full_bloc.dart';
import 'models/first_create_log_full_model.dart';
import 'package:flutter/material.dart';
import 'package:phm_th_hng_thm_s_application7/core/app_export.dart';
import 'package:phm_th_hng_thm_s_application7/widgets/custom_outlined_button.dart';

class FirstCreateLogFullScreen extends StatelessWidget {
  const FirstCreateLogFullScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FirstCreateLogFullBloc>(
      create: (context) => FirstCreateLogFullBloc(FirstCreateLogFullState(
        firstCreateLogFullModelObj: FirstCreateLogFullModel(),
      ))
        ..add(FirstCreateLogFullInitialEvent()),
      child: FirstCreateLogFullScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FirstCreateLogFullBloc, FirstCreateLogFullState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: SizedBox(
                  height: 1103.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 19.h,
                            vertical: 64.v,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                ImageConstant.imgGroup55,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 480.v),
                              _buildTimeZone(context),
                              SizedBox(height: 20.v),
                              Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 56.v,
                                      width: 65.h,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 18.h,
                                        vertical: 17.v,
                                      ),
                                      decoration: AppDecoration.outlineGray10001
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10,
                                      ),
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgArrowUp,
                                        height: 20.v,
                                        width: 25.h,
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                    Container(
                                      height: 56.v,
                                      width: 65.h,
                                      margin: EdgeInsets.only(left: 10.h),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 18.h,
                                        vertical: 17.v,
                                      ),
                                      decoration: AppDecoration.outlineGray10001
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10,
                                      ),
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgArrowUp,
                                        height: 20.v,
                                        width: 25.h,
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                    Container(
                                      height: 56.v,
                                      width: 65.h,
                                      margin: EdgeInsets.only(left: 10.h),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 18.h,
                                        vertical: 17.v,
                                      ),
                                      decoration: AppDecoration.outlineGray10001
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10,
                                      ),
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgArrowUp,
                                        height: 20.v,
                                        width: 25.h,
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 19.h,
                            vertical: 44.v,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                ImageConstant.imgGroup46,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 7.v),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Text(
                                    "lbl_create_log".tr,
                                    style: theme.textTheme.headlineLarge,
                                  ),
                                ),
                              ),
                              SizedBox(height: 43.v),
                              _buildEightyNine(context),
                              SizedBox(height: 41.v),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Text(
                                    "lbl_type".tr,
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                              ),
                              SizedBox(height: 22.v),
                              _buildSeparateHardLumps(context),
                              SizedBox(height: 16.v),
                              _buildUser(context),
                              SizedBox(height: 16.v),
                              _buildTelevision(context),
                              SizedBox(height: 38.v),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Text(
                                    "lbl_colour".tr,
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                              ),
                              SizedBox(height: 25.v),
                              CustomImageView(
                                imagePath: ImageConstant.imgGroup60,
                                height: 50.v,
                                width: 375.h,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 20.h,
                            bottom: 300.v,
                          ),
                          child: Text(
                            "lbl_memo".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildTimeZone(BuildContext context) {
    return Container(
      width: 375.h,
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.outlineGray10001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Container(
        width: 328.h,
        margin: EdgeInsets.only(left: 7.h),
        child: Text(
          "msg_lorem_ipsum_dolor".tr,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: CustomTextStyles.bodyLargeOnPrimary.copyWith(
            height: 1.75,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEightyNine(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomOutlinedButton(
            width: 180.h,
            text: "lbl_2020_06_06".tr,
            leftIcon: Container(
              margin: EdgeInsets.only(right: 13.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgCalendar,
                height: 18.adaptSize,
                width: 18.adaptSize,
              ),
            ),
          ),
          CustomOutlinedButton(
            width: 184.h,
            text: "msg_10_20_10_30_am".tr,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeparateHardLumps(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 8.h),
              padding: EdgeInsets.symmetric(
                horizontal: 23.h,
                vertical: 12.v,
              ),
              decoration: AppDecoration.outlinePrimary1.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 9.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup14DeepOrange800,
                    height: 19.v,
                    width: 49.h,
                  ),
                  SizedBox(height: 15.v),
                  SizedBox(
                    width: 62.h,
                    child: Text(
                      "msg_separate_hard_lumps".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.h),
            child: _buildSeventyEight(context),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 8.h),
              padding: EdgeInsets.symmetric(
                horizontal: 17.h,
                vertical: 12.v,
              ),
              decoration: AppDecoration.outlineGray3001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 6.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup16,
                    height: 16.v,
                    width: 43.h,
                  ),
                  SizedBox(height: 14.v),
                  SizedBox(
                    width: 77.h,
                    child: Text(
                      "msg_a_sausage_shape".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUser(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 8.h),
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.outlineGray3001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 7.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgUserGray40021x67,
                    height: 21.v,
                    width: 67.h,
                  ),
                  SizedBox(height: 15.v),
                  SizedBox(
                    width: 69.h,
                    child: Text(
                      "msg_like_a_smooth_soft".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.h),
            child: _buildEightyOne(context),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: _buildEightyOne(context),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTelevision(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: _buildSeventyEight(context),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8.h),
              padding: EdgeInsets.symmetric(
                horizontal: 42.h,
                vertical: 20.v,
              ),
              decoration: AppDecoration.outlineGray3001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 10.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgVector,
                    height: 17.v,
                    width: 27.h,
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 17.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "lbl_other".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 8.h),
              padding: EdgeInsets.symmetric(
                horizontal: 31.h,
                vertical: 13.v,
              ),
              decoration: AppDecoration.outlineGray3001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgSettingsGray400,
                    height: 35.adaptSize,
                    width: 35.adaptSize,
                  ),
                  SizedBox(height: 9.v),
                  SizedBox(
                    width: 47.h,
                    child: Text(
                      "msg_no_bowel_movement".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildEightyOne(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 9.v,
          ),
          decoration: AppDecoration.outlineGray3001.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 5.v),
              CustomImageView(
                imagePath: ImageConstant.imgGroup18,
                height: 24.v,
                width: 62.h,
              ),
              SizedBox(height: 11.v),
              SizedBox(
                width: 74.h,
                child: Text(
                  "msg_mushy_consistency".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildSeventyEight(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 8.v,
          ),
          decoration: AppDecoration.outlineGray3001.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              CustomImageView(
                imagePath: ImageConstant.imgTelevision,
                height: 31.v,
                width: 39.h,
              ),
              SizedBox(height: 9.v),
              SizedBox(
                width: 75.h,
                child: Text(
                  "msg_liquid_consistency".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
