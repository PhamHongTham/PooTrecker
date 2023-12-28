// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

/// Represents the state of Login in the application.
class LoginState extends Equatable {
  LoginState({
    this.emailFieldController,
    this.passwordFieldController,
    this.isShowPassword = true,
    this.loginModelObj,
  });

  TextEditingController? emailFieldController;

  TextEditingController? passwordFieldController;

  LoginModel? loginModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        emailFieldController,
        passwordFieldController,
        isShowPassword,
        loginModelObj,
      ];
  LoginState copyWith({
    TextEditingController? emailFieldController,
    TextEditingController? passwordFieldController,
    bool? isShowPassword,
    LoginModel? loginModelObj,
  }) {
    return LoginState(
      emailFieldController: emailFieldController ?? this.emailFieldController,
      passwordFieldController:
          passwordFieldController ?? this.passwordFieldController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      loginModelObj: loginModelObj ?? this.loginModelObj,
    );
  }
}
