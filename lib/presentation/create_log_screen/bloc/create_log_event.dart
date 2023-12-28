// ignore_for_file: must_be_immutable

part of 'create_log_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CreateLog widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreateLogEvent extends Equatable {}

/// Event that is dispatched when the CreateLog widget is first created.
class CreateLogInitialEvent extends CreateLogEvent {
  @override
  List<Object?> get props => [];
}
