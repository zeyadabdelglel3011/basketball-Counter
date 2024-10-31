part of 'counter_cubit.dart';

@immutable
sealed class CounterState {}

final class CounterAIncrement extends CounterState {}

final class CounterBIncrement extends CounterState {}

final class CounterReset extends CounterState {}



