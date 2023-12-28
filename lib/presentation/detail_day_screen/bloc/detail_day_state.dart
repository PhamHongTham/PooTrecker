// ignore_for_file: must_be_immutable

part of 'detail_day_bloc.dart';

/// Represents the state of DetailDay in the application.
class DetailDayState extends Equatable {
  DetailDayState({this.detailDayModelObj});

  DetailDayModel? detailDayModelObj;

  @override
  List<Object?> get props => [
        detailDayModelObj,
      ];
  DetailDayState copyWith({DetailDayModel? detailDayModelObj}) {
    return DetailDayState(
      detailDayModelObj: detailDayModelObj ?? this.detailDayModelObj,
    );
  }
}
