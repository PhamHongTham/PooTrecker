// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [share_dialog],
/// and is typically used to hold data that is passed between different parts of the application.
class ShareModel extends Equatable {
  ShareModel() {}

  ShareModel copyWith() {
    return ShareModel();
  }

  @override
  List<Object?> get props => [];
}
