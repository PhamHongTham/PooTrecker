// ignore_for_file: must_be_immutable

part of 'first_create_log_full_bloc.dart';

/// Represents the state of FirstCreateLogFull in the application.
class FirstCreateLogFullState extends Equatable {
  FirstCreateLogFullState({this.firstCreateLogFullModelObj});

  FirstCreateLogFullModel? firstCreateLogFullModelObj;

  @override
  List<Object?> get props => [
        firstCreateLogFullModelObj,
      ];
  FirstCreateLogFullState copyWith(
      {FirstCreateLogFullModel? firstCreateLogFullModelObj}) {
    return FirstCreateLogFullState(
      firstCreateLogFullModelObj:
          firstCreateLogFullModelObj ?? this.firstCreateLogFullModelObj,
    );
  }
}
