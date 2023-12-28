// ignore_for_file: must_be_immutable

part of 'create_log_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CreateLogOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreateLogOneEvent extends Equatable {}

/// Event that is dispatched when the CreateLogOne widget is first created.
class CreateLogOneInitialEvent extends CreateLogOneEvent {
  @override
  List<Object?> get props => [];
}
