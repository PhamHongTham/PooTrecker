import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:phm_th_hng_thm_s_application7/core/app_export.dart';
import 'package:phm_th_hng_thm_s_application7/core/utils/validation_functions.dart';
import 'package:phm_th_hng_thm_s_application7/widgets/custom_elevated_button.dart';
import 'package:phm_th_hng_thm_s_application7/widgets/custom_icon_button.dart';
import 'package:phm_th_hng_thm_s_application7/widgets/custom_outlined_button.dart';
import 'package:phm_th_hng_thm_s_application7/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
          ..add(LoginInitialEvent()),
        child: LoginScreen());
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
                                                                      40.h,
                                                                  vertical:
                                                                      97.v),
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
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: SizedBox(
                                                                        width: 125
                                                                            .h,
                                                                        child: Text(
                                                                            "lbl_welcome_back"
                                                                                .tr,
                                                                            maxLines:
                                                                                2,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            style: theme.textTheme.headlineLarge))),
                                                                SizedBox(
                                                                    height:
                                                                        67.v),
                                                                CustomIconButton(
                                                                    height: 65
                                                                        .adaptSize,
                                                                    width: 65
                                                                        .adaptSize,
                                                                    padding: EdgeInsets
                                                                        .all(18
                                                                            .h),
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant.imgLocation)),
                                                                SizedBox(
                                                                    height:
                                                                        69.v),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Text(
                                                                        "lbl_login"
                                                                            .tr,
                                                                        style: theme
                                                                            .textTheme
                                                                            .titleLarge)),
                                                                SizedBox(
                                                                    height:
                                                                        39.v),
                                                                _buildEmailField(
                                                                    context),
                                                                SizedBox(
                                                                    height:
                                                                        18.v),
                                                                Divider(),
                                                                SizedBox(
                                                                    height:
                                                                        41.v),
                                                                _buildPasswordField(
                                                                    context),
                                                                SizedBox(
                                                                    height:
                                                                        40.v),
                                                                _buildLoginButton(
                                                                    context),
                                                                SizedBox(
                                                                    height:
                                                                        41.v),
                                                                Text(
                                                                    "lbl_forgot_password"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .bodyLargeGray500_1
                                                                        .copyWith(
                                                                            decoration:
                                                                                TextDecoration.underline)),
                                                                SizedBox(
                                                                    height:
                                                                        38.v),
                                                                _buildSignUpButton(
                                                                    context),
                                                                SizedBox(
                                                                    height: 6.v)
                                                              ])))
                                                ]))
                                      ])))
                        ])))));
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return BlocSelector<LoginBloc, LoginState, TextEditingController?>(
        selector: (state) => state.emailFieldController,
        builder: (context, emailFieldController) {
          return CustomTextFormField(
              width: 115.h,
              controller: emailFieldController,
              hintText: "msg_enter_your_email".tr,
              textInputType: TextInputType.emailAddress,
              alignment: Alignment.centerLeft,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return CustomTextFormField(
          controller: state.passwordFieldController,
          hintText: "msg_enter_your_password".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          suffix: InkWell(
              onTap: () {
                context.read<LoginBloc>().add(ChangePasswordVisibilityEvent(
                    value: !state.isShowPassword));
              },
              child: Container(
                  margin: EdgeInsets.fromLTRB(12.h, 3.v, 1.h, 21.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgEye,
                      height: 13.v,
                      width: 20.h))),
          suffixConstraints: BoxConstraints(maxHeight: 37.v),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: state.isShowPassword,
          borderDecoration: TextFormFieldStyleHelper.underLineGray);
    });
  }

  /// Section Widget
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_login".tr,
        onPressed: () {
          onTapLoginButton(context);
        });
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomOutlinedButton(
        text: "lbl_sign_up".tr,
        buttonStyle: CustomButtonStyles.outlineGray,
        onPressed: () {
          onTapSignUpButton(context);
        });
  }

  /// Navigates to the firstCreateLogScreen when the action is triggered.
  onTapLoginButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.firstCreateLogScreen,
    );
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapSignUpButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupScreen,
    );
  }
}
