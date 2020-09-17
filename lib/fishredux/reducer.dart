import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

/// 页面刷新层
Reducer<FishReduxPageState> buildReducer() {
  return asReducer(
    <Object, Reducer<FishReduxPageState>>{
      // 绑定触发方法
      FishReduxPageAction.refresh: _onRefresh,
    },
  );
}

/// 返回一个新 data 以刷新视图
FishReduxPageState _onRefresh(FishReduxPageState state, Action action) {
  final FishReduxPageState newState = state.clone();
  return newState;
}
