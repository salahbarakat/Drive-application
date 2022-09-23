import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  static CounterCubit get(context) => BlocProvider.of(context);
  int count = 0;
  void decrement (){
    count--;
    emit(CounterDecrement());
  }
}
