import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'payload_event.dart';
part 'payload_state.dart';

class PayloadBloc extends Bloc<PayloadEvent, PayloadState> {
  PayloadBloc() : super(PayloadInitial()) {
    on<PayloadEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
