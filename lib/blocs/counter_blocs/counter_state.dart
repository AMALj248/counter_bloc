part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {
  const CounterState();
  @override
  List<Object> get props => [];
}

class CounterInitial extends CounterState {}

class CounterProgress extends CounterState {}

class CounterSuccess extends CounterState {
  final countVal;
  CounterSuccess(this.countVal);
}

class CounterFailure extends CounterState {
  final exception;
  CounterFailure(this.exception);
}
