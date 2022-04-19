
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'my_first_state.dart';

class MyFirstCubit extends Cubit<MyFirstState> {
   int number;
  MyFirstCubit(this.number) : super(MyFirstInitial(0));

    void changNumber(bool _isAdd) {
    if (_isAdd) {
      number++;
      emit(MyFirstPositive(number));
     
    } else {
      number--;
     emit(MyFirstNegative(number));
    }
  }
}
