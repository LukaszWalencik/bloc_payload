part of 'payload_bloc.dart';

sealed class PayloadState extends Equatable {
  const PayloadState();
  
  @override
  List<Object> get props => [];
}

final class PayloadInitial extends PayloadState {}
