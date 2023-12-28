// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'typechartcompare_item_model.dart';

/// This class defines the variables used in the [dashboard_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DashboardModel extends Equatable {
  DashboardModel({this.typechartcompareItemList = const []}) {}

  List<TypechartcompareItemModel> typechartcompareItemList;

  DashboardModel copyWith(
      {List<TypechartcompareItemModel>? typechartcompareItemList}) {
    return DashboardModel(
      typechartcompareItemList:
          typechartcompareItemList ?? this.typechartcompareItemList,
    );
  }

  @override
  List<Object?> get props => [typechartcompareItemList];
}
