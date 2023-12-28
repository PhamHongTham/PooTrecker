// ignore_for_file: must_be_immutable

part of 'create_log_one_bloc.dart';

/// Represents the state of CreateLogOne in the application.
class CreateLogOneState extends Equatable {
  CreateLogOneState({this.createLogOneModelObj});

  CreateLogOneModel? createLogOneModelObj;

  @override
  List<Object?> get props => [
        createLogOneModelObj,
      ];
  CreateLogOneState copyWith({CreateLogOneModel? createLogOneModelObj}) {
    return CreateLogOneState(
      createLogOneModelObj: createLogOneModelObj ?? this.createLogOneModelObj,
    );
  }
}
