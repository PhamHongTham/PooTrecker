import 'bloc/first_create_log_bloc.dart';
import 'models/first_create_log_model.dart';
import 'package:flutter/material.dart';
import 'package:phm_th_hng_thm_s_application7/core/app_export.dart';
import 'package:phm_th_hng_thm_s_application7/core/utils/validation_functions.dart';
import 'package:phm_th_hng_thm_s_application7/widgets/custom_elevated_button.dart';
import 'package:phm_th_hng_thm_s_application7/widgets/custom_outlined_button.dart';
import 'package:phm_th_hng_thm_s_application7/widgets/custom_pin_code_text_field.dart';
import 'package:phm_th_hng_thm_s_application7/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class FirstCreateLogScreen extends StatelessWidget {
  FirstCreateLogScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<FirstCreateLogBloc>(
        create: (context) => FirstCreateLogBloc(
            FirstCreateLogState(firstCreateLogModelObj: FirstCreateLogModel()))
          ..add(FirstCreateLogInitialEvent()),
        child: FirstCreateLogScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgFirstCreateLog),
                        fit: BoxFit.cover)),
                child: Form(
                    key: _formKey,
                    child: Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(
                            horizontal: 19.h, vertical: 52.v),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: Text("lbl_create_log".tr,
                                          style:
                                              theme.textTheme.headlineLarge))),
                              SizedBox(height: 43.v),
                              _buildEightyNine(context),
                              SizedBox(height: 41.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: Text("lbl_type".tr,
                                          style: theme.textTheme.titleLarge))),
                              SizedBox(height: 22.v),
                              _buildTypeValueRow(context),
                              SizedBox(height: 16.v),
                              _buildUserRow(context),
                              SizedBox(height: 16.v),
                              _buildTelevisionRow(context),
                              SizedBox(height: 38.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: Text("lbl_colour".tr,
                                          style: theme.textTheme.titleLarge))),
                              SizedBox(height: 25.v),
                              _buildSixty(context),
                              SizedBox(height: 50.v),
                              _buildEightySeven(context),
                              SizedBox(height: 3.v)
                            ]))))));
  }

  /// Section Widget
  Widget _buildCreateLogButton(BuildContext context) {
    return CustomOutlinedButton(
        width: 180.h,
        text: "lbl_2020_06_06".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 13.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgCalendar,
                height: 18.adaptSize,
                width: 18.adaptSize)));
  }

  /// Section Widget
  Widget _buildCreateLogButton1(BuildContext context) {
    return CustomOutlinedButton(width: 184.h, text: "msg_10_20_10_30_am".tr);
  }

  /// Section Widget
  Widget _buildEightyNine(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildCreateLogButton(context),
              _buildCreateLogButton1(context)
            ]));
  }

  /// Section Widget
  Widget _buildTypeValueEditText(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: BlocBuilder<FirstCreateLogBloc, FirstCreateLogState>(
                builder: (context, state) {
              return CustomTextFormField(
                  controller: state.typeValueEditTextController,
                  hintText: "msg_separate_hard_lumps".tr,
                  hintStyle: theme.textTheme.bodySmall!,
                  textInputType: TextInputType.visiblePassword,
                  suffix: InkWell(
                      onTap: () {
                        context.read<FirstCreateLogBloc>().add(
                            ChangePasswordVisibilityEvent(
                                value: !state.isShowPassword));
                      },
                      child: Container(
                          margin: EdgeInsets.fromLTRB(-59.h, 22.v, 27.h, 30.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgUser,
                              height: 24.v,
                              width: 59.h))),
                  suffixConstraints: BoxConstraints(maxHeight: 100.v),
                  validator: (value) {
                    if (value == null ||
                        (!isValidPassword(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_password".tr;
                    }
                    return null;
                  },
                  obscureText: state.isShowPassword);
            })));
  }

  /// Section Widget
  Widget _buildTypeValueRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          _buildTypeValueEditText(context),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.h),
              child: _buildTelevisionColumn(context,
                  televisionImage: ImageConstant.imgUserGray400,
                  liquidConsistencyText: "msg_lumpy_and_sausage".tr)),
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 8.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.h, vertical: 12.v),
                  decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 6.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgGroup16,
                            height: 16.v,
                            width: 43.h),
                        SizedBox(height: 14.v),
                        SizedBox(
                            width: 77.h,
                            child: Text("msg_a_sausage_shape".tr,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.bodySmall))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildUserRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(right: 8.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 8.v),
                  decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 7.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgUserGray40021x67,
                            height: 21.v,
                            width: 67.h),
                        SizedBox(height: 15.v),
                        SizedBox(
                            width: 69.h,
                            child: Text("msg_like_a_smooth_soft".tr,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.bodySmall))
                      ]))),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.h),
              child: _buildUserColumn(context)),
          Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: _buildUserColumn(context))
        ]));
  }

  /// Section Widget
  Widget _buildTelevisionRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(right: 8.h),
              child: _buildTelevisionColumn(context,
                  televisionImage: ImageConstant.imgTelevision,
                  liquidConsistencyText: "msg_liquid_consistency".tr)),
          Expanded(
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 42.h, vertical: 20.v),
                  decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20),
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
                            alignment: Alignment.center),
                        SizedBox(height: 17.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Text("lbl_other".tr,
                                style: theme.textTheme.bodySmall))
                      ]))),
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 8.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 31.h, vertical: 13.v),
                  decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgSettingsGray400,
                            height: 35.adaptSize,
                            width: 35.adaptSize),
                        SizedBox(height: 9.v),
                        SizedBox(
                            width: 47.h,
                            child: Text("msg_no_bowel_movement".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.bodySmall))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildOtpView(BuildContext context) {
    return BlocSelector<FirstCreateLogBloc, FirstCreateLogState,
            TextEditingController?>(
        selector: (state) => state.otpController,
        builder: (context, otpController) {
          return CustomPinCodeTextField(
              context: context,
              controller: otpController,
              onChanged: (value) {
                otpController?.text = value;
              });
        });
  }

  /// Section Widget
  Widget _buildSixty(BuildContext context) {
    return SizedBox(
        height: 50.v,
        width: 375.h,
        child: Stack(alignment: Alignment.centerLeft, children: [
          _buildOtpView(context),
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                  margin: EdgeInsets.only(left: 138.h),
                  decoration: BoxDecoration(
                      color: appTheme.deepOrange800,
                      borderRadius: BorderRadius.circular(17.h))))
        ]));
  }

  /// Section Widget
  Widget _buildCreateButton(BuildContext context) {
    return CustomElevatedButton(
        width: 216.h,
        text: "lbl_create".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 9.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGrid,
                height: 16.adaptSize,
                width: 16.adaptSize)),
        onPressed: () {
          onTapCreateButton(context);
        });
  }

  /// Section Widget
  Widget _buildEightySeven(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 41.h, right: 1.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        onTapTxtCancel(context);
                      },
                      child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 15.v),
                          child: Text("lbl_cancel".tr,
                              style: CustomTextStyles.titleMediumGray500))),
                  _buildCreateButton(context)
                ])));
  }

  /// Common widget
  Widget _buildUserColumn(BuildContext context) {
    return Expanded(
        child: SizedBox(
            width: double.maxFinite,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 9.v),
                decoration: AppDecoration.outlineGray
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 5.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgGroup18,
                          height: 24.v,
                          width: 62.h),
                      SizedBox(height: 11.v),
                      SizedBox(
                          width: 74.h,
                          child: Text("msg_mushy_consistency".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.bodySmall))
                    ]))));
  }

  /// Common widget
  Widget _buildTelevisionColumn(
    BuildContext context, {
    required String televisionImage,
    required String liquidConsistencyText,
  }) {
    return Expanded(
        child: SizedBox(
            width: double.maxFinite,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 8.v),
                decoration: AppDecoration.outlineGray
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 2.v),
                      CustomImageView(
                          imagePath: televisionImage,
                          height: 31.v,
                          width: 39.h),
                      SizedBox(height: 9.v),
                      SizedBox(
                          width: 75.h,
                          child: Text(liquidConsistencyText,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.bodySmall!
                                  .copyWith(color: appTheme.gray70001)))
                    ]))));
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  onTapTxtCancel(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.dashboardScreen,
    );
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  onTapCreateButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.dashboardScreen,
    );
  }
}
