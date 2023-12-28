import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phm_th_hng_thm_s_application7/presentation/first_create_log_full_screen/models/first_create_log_full_model.dart';
part 'first_create_log_full_event.dart';
part 'first_create_log_full_state.dart';

/// A bloc that manages the state of a FirstCreateLogFull according to the event that is dispatched to it.
class FirstCreateLogFullBloc
    extends Bloc<FirstCreateLogFullEvent, FirstCreateLogFullState> {
  FirstCreateLogFullBloc(FirstCreateLogFullState initialState)
      : super(initialState) {
    on<FirstCreateLogFullInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FirstCreateLogFullInitialEvent event,
    Emitter<FirstCreateLogFullState> emit,
  ) async {}
}
