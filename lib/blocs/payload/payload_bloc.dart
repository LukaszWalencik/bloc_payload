import 'package:bloc/bloc.dart';
import 'package:bloc_payload/blocs/payload/payload_state.dart';
import 'package:equatable/equatable.dart';

part 'payload_event.dart';

class PayloadBloc extends Bloc<PayloadEvent, PayloadState> {
  PayloadBloc() : super(PayloadState.initial()) {
    on<ChangeThemeEvent>((event, emit) {
      if (event.randInt % 2 == 0) {
        emit(state.copyWith(appTheme: AppTheme.light));
      } else {
        emit(state.copyWith(appTheme: AppTheme.dark));
      }
      // TODO: implement event handler
    });
  }
}
