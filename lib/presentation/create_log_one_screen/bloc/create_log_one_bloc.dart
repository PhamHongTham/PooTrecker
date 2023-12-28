import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phm_th_hng_thm_s_application7/presentation/create_log_one_screen/models/create_log_one_model.dart';
part 'create_log_one_event.dart';
part 'create_log_one_state.dart';

/// A bloc that manages the state of a CreateLogOne according to the event that is dispatched to it.
class CreateLogOneBloc extends Bloc<CreateLogOneEvent, CreateLogOneState> {
  CreateLogOneBloc(CreateLogOneState initialState) : super(initialState) {
    on<CreateLogOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CreateLogOneInitialEvent event,
    Emitter<CreateLogOneState> emit,
  ) async {}
}
