import 'package:bloc/bloc.dart';
import 'package:bloc_payload/blocs/payload/payload_state.dart';
import 'package:equatable/equatable.dart';

class PayloadCubit extends Cubit<PayloadState> {
  PayloadCubit() : super(PayloadState.initial());

  void changeTheme(int randInt) {
    if (randInt % 2 == 0) {
      emit(state.copyWith(appTheme: AppTheme.light));
    } else {
      emit(state.copyWith(appTheme: AppTheme.dark));
    }
  }
}
