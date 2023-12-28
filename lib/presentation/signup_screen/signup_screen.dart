import 'bloc/signup_bloc.dart';
import 'models/signup_model.dart';
import 'package:flutter/material.dart';
import 'package:phm_th_hng_thm_s_application7/core/app_export.dart';
import 'package:phm_th_hng_thm_s_application7/core/utils/validation_functions.dart';
import 'package:phm_th_hng_thm_s_application7/widgets/custom_elevated_button.dart';
import 'package:phm_th_hng_thm_s_application7/widgets/custom_icon_button.dart';
import 'package:phm_th_hng_thm_s_application7/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignupBloc>(
        create: (context) =>
            SignupBloc(SignupState(signupModelObj: SignupModel()))
              ..add(SignupInitialEvent()),
        child: SignupScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SingleChildScrollView(
                              child: SizedBox(
                                  width: double.maxFinite,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
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
                                                color:
                                                    appTheme.deepOrangeA100)),
                                        Spacer(),
                                        SizedBox(
                                            height: SizeUtils.height,
                                            width: double.maxFinite,
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Container(
                                                          height: 626.v,
                                                          width: double
                                                              .maxFinite,
                                                          decoration:
                                                              BoxDecoration(
                                                                  color: appTheme
                                                                      .gray100))),
                                                  Align(
                                                      alignment: Alignment
                                                          .center,
                                                      child: Container(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      38.h,
                                                                  vertical:
                                                                      77.v),
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: AssetImage(
                                                                      ImageConstant
                                                                          .imgGroup24),
                                                                  fit: BoxFit
                                                                      .cover)),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                SizedBox(
                                                                    height:
                                                                        21.v),
                                                                Container(
                                                                    width:
                                                                        180.h,
                                                                    margin: EdgeInsets.only(
                                                                        left: 2
                                                                            .h),
                                                                    child: Text(
                                                                        "msg_create_new_account"
                                                                            .tr,
                                                                        maxLines:
                                                                            2,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        style: theme
                                                                            .textTheme
                                                                            .headlineLarge)),
                                                                SizedBox(
                                                                    height:
                                                                        67.v),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 2
                                                                            .h),
                                                                    child: CustomIconButton(
                                                                        height: 65
                                                                            .adaptSize,
                                                                        width: 65
                                                                            .adaptSize,
                                                                        padding:
                                                                            EdgeInsets.all(19
                                                                                .h),
                                                                        child: CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgSettings))),
                                                                SizedBox(
                                                                    height:
                                                                        49.v),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 2
                                                                            .h),
                                                                    child: Text(
                                                                        "lbl_sign_up"
                                                                            .tr,
                                                                        style: theme
                                                                            .textTheme
                                                                            .titleLarge)),
                                                                SizedBox(
                                                                    height:
                                                                        39.v),
                                                                _buildCreateNewAccount(
                                                                    context),
                                                                SizedBox(
                                                                    height:
                                                                        18.v),
                                                                Divider(
                                                                    indent:
                                                                        2.h),
                                                                SizedBox(
                                                                    height:
                                                                        36.v),
                                                                _buildPassword1(
                                                                    context),
                                                                SizedBox(
                                                                    height:
                                                                        36.v),
                                                                _buildPassword2(
                                                                    context),
                                                                SizedBox(
                                                                    height:
                                                                        35.v),
                                                                Row(children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgThumbsUp,
                                                                      height: 22
                                                                          .adaptSize,
                                                                      width: 22
                                                                          .adaptSize),
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left: 17
                                                                              .h,
                                                                          top: 2
                                                                              .v),
                                                                      child: RichText(
                                                                          text: TextSpan(children: [
                                                                            TextSpan(
                                                                                text: "lbl_agree_app".tr,
                                                                                style: CustomTextStyles.bodyLargeGray500),
                                                                            TextSpan(
                                                                                text: "lbl_policy".tr,
                                                                                style: CustomTextStyles.bodyLargeGray500.copyWith(decoration: TextDecoration.underline)),
                                                                            TextSpan(
                                                                                text: "lbl_and".tr,
                                                                                style: CustomTextStyles.bodyLargeGray500),
                                                                            TextSpan(
                                                                                text: "lbl_term".tr,
                                                                                style: CustomTextStyles.bodyLargeGray500.copyWith(decoration: TextDecoration.underline))
                                                                          ]),
                                                                          textAlign: TextAlign.left))
                                                                ]),
                                                                SizedBox(
                                                                    height:
                                                                        35.v),
                                                                _buildSignUpButton(
                                                                    context),
                                                                SizedBox(
                                                                    height:
                                                                        50.v),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Text(
                                                                        "lbl_login"
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .titleLargeGray500Regular))
                                                              ])))
                                                ]))
                                      ])))
                        ])))));
  }

  /// Section Widget
  Widget _buildCreateNewAccount(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: BlocSelector<SignupBloc, SignupState, TextEditingController?>(
            selector: (state) => state.createNewAccountController,
            builder: (context, createNewAccountController) {
              return CustomTextFormField(
                  width: 115.h,
                  controller: createNewAccountController,
                  hintText: "msg_enter_your_email".tr,
                  textInputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_email".tr;
                    }
                    return null;
                  });
            }));
  }

  /// Section Widget
  Widget _buildPassword1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: BlocSelector<SignupBloc, SignupState, TextEditingController?>(
            selector: (state) => state.password1Controller,
            builder: (context, password1Controller) {
              return CustomTextFormField(
                  controller: password1Controller,
                  hintText: "msg_enter_your_password".tr,
                  textInputType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null ||
                        (!isValidPassword(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_password".tr;
                    }
                    return null;
                  },
                  obscureText: true);
            }));
  }

  /// Section Widget
  Widget _buildPassword2(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: BlocSelector<SignupBloc, SignupState, TextEditingController?>(
            selector: (state) => state.password2Controller,
            builder: (context, password2Controller) {
              return CustomTextFormField(
                  controller: password2Controller,
                  hintText: "msg_re_enter_your_password".tr,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null ||
                        (!isValidPassword(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_password".tr;
                    }
                    return null;
                  },
                  obscureText: true);
            }));
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_sign_up".tr,
        margin: EdgeInsets.only(left: 2.h),
        onPressed: () {
          onTapSignUpButton(context);
        });
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapSignUpButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
