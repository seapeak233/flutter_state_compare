import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

///
/// 页面刷新层
///

Reducer<FishReduxPageState> buildReducer() {
  return asReducer(
    <Object, Reducer<FishReduxPageState>>{
      FishReduxPageAction.refresh: _onRefresh,
    },
  );
}

FishReduxPageState _onRefresh(FishReduxPageState state, Action action) {
  final FishReduxPageState newState = state.clone();
  return newState;
}
