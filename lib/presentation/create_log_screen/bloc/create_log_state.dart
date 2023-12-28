// ignore_for_file: must_be_immutable

part of 'create_log_bloc.dart';

/// Represents the state of CreateLog in the application.
class CreateLogState extends Equatable {
  CreateLogState({this.createLogModelObj});

  CreateLogModel? createLogModelObj;

  @override
  List<Object?> get props => [
        createLogModelObj,
      ];
  CreateLogState copyWith({CreateLogModel? createLogModelObj}) {
    return CreateLogState(
      createLogModelObj: createLogModelObj ?? this.createLogModelObj,
    );
  }
}
