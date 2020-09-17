import 'package:bloc/bloc.dart';

// model层
class CounterCubit extends Cubit<CounterState> {
  // 绑定数据
  CounterCubit() : super(CounterState());

  void increment() {
    state.count = state.count + 1;
    // 刷新数据
    emit(state.clone());
  }
}

// 数据层
class CounterState {
  int count = 0;
  // model层执行emit的时候需要重新生成data
  CounterState clone () {
    return CounterState()..count = count;
  }
}