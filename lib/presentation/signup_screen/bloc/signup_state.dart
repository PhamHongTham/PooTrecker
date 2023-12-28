// ignore_for_file: must_be_immutable

part of 'signup_bloc.dart';

/// Represents the state of Signup in the application.
class SignupState extends Equatable {
  SignupState({
    this.createNewAccountController,
    this.password1Controller,
    this.password2Controller,
    this.signupModelObj,
  });

  TextEditingController? createNewAccountController;

  TextEditingController? password1Controller;

  TextEditingController? password2Controller;

  SignupModel? signupModelObj;

  @override
  List<Object?> get props => [
        createNewAccountController,
        password1Controller,
        password2Controller,
        signupModelObj,
      ];
  SignupState copyWith({
    TextEditingController? createNewAccountController,
    TextEditingController? password1Controller,
    TextEditingController? password2Controller,
    SignupModel? signupModelObj,
  }) {
    return SignupState(
      createNewAccountController:
          createNewAccountController ?? this.createNewAccountController,
      password1Controller: password1Controller ?? this.password1Controller,
      password2Controller: password2Controller ?? this.password2Controller,
      signupModelObj: signupModelObj ?? this.signupModelObj,
    );
  }
}
