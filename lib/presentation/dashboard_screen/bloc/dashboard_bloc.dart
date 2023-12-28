import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/typechartcompare_item_model.dart';
import 'package:phm_th_hng_thm_s_application7/presentation/dashboard_screen/models/dashboard_model.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

/// A bloc that manages the state of a Dashboard according to the event that is dispatched to it.
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc(DashboardState initialState) : super(initialState) {
    on<DashboardInitialEvent>(_onInitialize);
  }

  List<TypechartcompareItemModel> fillTypechartcompareItemList() {
    return List.generate(1, (index) => TypechartcompareItemModel());
  }

  _onInitialize(
    DashboardInitialEvent event,
    Emitter<DashboardState> emit,
  ) async {
    emit(state.copyWith(sliderIndex: 0));
    emit(state.copyWith(
        dashboardModelObj: state.dashboardModelObj?.copyWith(
            typechartcompareItemList: fillTypechartcompareItemList())));
  }
}
