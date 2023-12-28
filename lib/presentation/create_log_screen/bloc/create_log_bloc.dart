import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phm_th_hng_thm_s_application7/presentation/create_log_screen/models/create_log_model.dart';
part 'create_log_event.dart';
part 'create_log_state.dart';

/// A bloc that manages the state of a CreateLog according to the event that is dispatched to it.
class CreateLogBloc extends Bloc<CreateLogEvent, CreateLogState> {
  CreateLogBloc(CreateLogState initialState) : super(initialState) {
    on<CreateLogInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CreateLogInitialEvent event,
    Emitter<CreateLogState> emit,
  ) async {}
}
