import 'package:bloc/bloc.dart';

// model层
class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState());

  void increment() {
    state.count = state.count + 1;
    emit(state.clone());
  }
}

// 数据层
class CounterState {
  int count = 0;

  CounterState clone () {
    return CounterState()..count = count;
  }
}