part of 'counter_bloc.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

class CounterScreenRequested extends CounterEvent {
  final cntVal;
  CounterScreenRequested(this.cntVal);

  @override
  List<Object> get props => [];
}

