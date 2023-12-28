// ignore_for_file: must_be_immutable

part of 'first_create_log_bloc.dart';

/// Represents the state of FirstCreateLog in the application.
class FirstCreateLogState extends Equatable {
  FirstCreateLogState({
    this.typeValueEditTextController,
    this.otpController,
    this.isShowPassword = true,
    this.firstCreateLogModelObj,
  });

  TextEditingController? typeValueEditTextController;

  TextEditingController? otpController;

  FirstCreateLogModel? firstCreateLogModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        typeValueEditTextController,
        otpController,
        isShowPassword,
        firstCreateLogModelObj,
      ];
  FirstCreateLogState copyWith({
    TextEditingController? typeValueEditTextController,
    TextEditingController? otpController,
    bool? isShowPassword,
    FirstCreateLogModel? firstCreateLogModelObj,
  }) {
    return FirstCreateLogState(
      typeValueEditTextController:
          typeValueEditTextController ?? this.typeValueEditTextController,
      otpController: otpController ?? this.otpController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      firstCreateLogModelObj:
          firstCreateLogModelObj ?? this.firstCreateLogModelObj,
    );
  }
}
