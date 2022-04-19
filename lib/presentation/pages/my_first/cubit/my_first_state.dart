part of 'my_first_cubit.dart';

@immutable
abstract class MyFirstState {
  final int number;

 const MyFirstState(this.number);
}

class MyFirstInitial extends MyFirstState {
  
  const MyFirstInitial(int number) : super(number);
}

class MyFirstPositive extends MyFirstState {
  const MyFirstPositive(int number) : super(number);
}

class MyFirstNegative extends MyFirstState {
  const MyFirstNegative(int number) : super(number);
}
