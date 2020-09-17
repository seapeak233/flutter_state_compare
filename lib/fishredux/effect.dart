import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

/// 数据操作层
Effect<FishReduxPageState> buildEffect() {
  return combineEffects(<Object, Effect<FishReduxPageState>>{
    // 绑定触发方法
    FishReduxPageAction.increment: _onAction,
  });
}

// 仅对值进行改变，不会产生页面视图的刷新，除非调用到reducer的事件
void _onAction(Action action, Context<FishReduxPageState> ctx) {
  ctx.state.count++;
  ctx.dispatch(FishReduxPageActionCreator.onRefresh());
}
