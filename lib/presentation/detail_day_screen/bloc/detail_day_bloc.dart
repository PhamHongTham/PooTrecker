import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phm_th_hng_thm_s_application7/presentation/detail_day_screen/models/detail_day_model.dart';
part 'detail_day_event.dart';
part 'detail_day_state.dart';

/// A bloc that manages the state of a DetailDay according to the event that is dispatched to it.
class DetailDayBloc extends Bloc<DetailDayEvent, DetailDayState> {
  DetailDayBloc(DetailDayState initialState) : super(initialState) {
    on<DetailDayInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DetailDayInitialEvent event,
    Emitter<DetailDayState> emit,
  ) async {}
}
