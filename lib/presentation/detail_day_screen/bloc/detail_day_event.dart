// ignore_for_file: must_be_immutable

part of 'detail_day_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DetailDay widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DetailDayEvent extends Equatable {}

/// Event that is dispatched when the DetailDay widget is first created.
class DetailDayInitialEvent extends DetailDayEvent {
  @override
  List<Object?> get props => [];
}
