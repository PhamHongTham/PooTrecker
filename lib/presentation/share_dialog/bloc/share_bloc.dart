import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phm_th_hng_thm_s_application7/presentation/share_dialog/models/share_model.dart';
part 'share_event.dart';
part 'share_state.dart';

/// A bloc that manages the state of a Share according to the event that is dispatched to it.
class ShareBloc extends Bloc<ShareEvent, ShareState> {
  ShareBloc(ShareState initialState) : super(initialState) {
    on<ShareInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ShareInitialEvent event,
    Emitter<ShareState> emit,
  ) async {}
}
