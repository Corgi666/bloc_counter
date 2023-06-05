part of 'couter_a_bloc.dart';

abstract class CouterAEvent extends Equatable {
  const CouterAEvent();

  @override
  List<Object> get props => [];
}

class CounterEvenadd extends CouterAEvent {}

class CounterEvenReset extends CouterAEvent {}
