// ignore_for_file: must_be_immutable

part of 'first_create_log_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FirstCreateLog widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FirstCreateLogEvent extends Equatable {}

/// Event that is dispatched when the FirstCreateLog widget is first created.
class FirstCreateLogInitialEvent extends FirstCreateLogEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends FirstCreateLogEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for OTP auto fill
class ChangeOTPEvent extends FirstCreateLogEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
