// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'payload_bloc.dart';

sealed class PayloadEvent extends Equatable {
  const PayloadEvent();

  @override
  List<Object> get props => [];
}

class ChangeThemeEvent extends PayloadEvent {
  final int randInt;

  ChangeThemeEvent(this.randInt);

  @override
  String toString() => 'ChangeThemeEvent(randInt: $randInt)';

  @override
  List<Object> get props => [randInt];
}
