import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phm_th_hng_thm_s_application7/presentation/first_create_log_screen/models/first_create_log_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'first_create_log_event.dart';
part 'first_create_log_state.dart';

/// A bloc that manages the state of a FirstCreateLog according to the event that is dispatched to it.
class FirstCreateLogBloc extends Bloc<FirstCreateLogEvent, FirstCreateLogState>
    with CodeAutoFill {
  FirstCreateLogBloc(FirstCreateLogState initialState) : super(initialState) {
    on<FirstCreateLogInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangeOTPEvent>(_changeOTP);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<FirstCreateLogState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<FirstCreateLogState> emit,
  ) {
    emit(
        state.copyWith(otpController: TextEditingController(text: event.code)));
  }

  _onInitialize(
    FirstCreateLogInitialEvent event,
    Emitter<FirstCreateLogState> emit,
  ) async {
    emit(state.copyWith(
        typeValueEditTextController: TextEditingController(),
        otpController: TextEditingController(),
        isShowPassword: true));
    listenForCode();
  }
}
