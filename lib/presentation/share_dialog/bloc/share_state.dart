// ignore_for_file: must_be_immutable

part of 'share_bloc.dart';

/// Represents the state of Share in the application.
class ShareState extends Equatable {
  ShareState({this.shareModelObj});

  ShareModel? shareModelObj;

  @override
  List<Object?> get props => [
        shareModelObj,
      ];
  ShareState copyWith({ShareModel? shareModelObj}) {
    return ShareState(
      shareModelObj: shareModelObj ?? this.shareModelObj,
    );
  }
}
