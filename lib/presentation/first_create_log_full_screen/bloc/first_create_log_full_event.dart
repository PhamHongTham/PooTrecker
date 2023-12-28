// ignore_for_file: must_be_immutable

part of 'first_create_log_full_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FirstCreateLogFull widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FirstCreateLogFullEvent extends Equatable {}

/// Event that is dispatched when the FirstCreateLogFull widget is first created.
class FirstCreateLogFullInitialEvent extends FirstCreateLogFullEvent {
  @override
  List<Object?> get props => [];
}
