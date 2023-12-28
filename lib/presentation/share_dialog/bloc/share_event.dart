// ignore_for_file: must_be_immutable

part of 'share_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Share widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ShareEvent extends Equatable {}

/// Event that is dispatched when the Share widget is first created.
class ShareInitialEvent extends ShareEvent {
  @override
  List<Object?> get props => [];
}
