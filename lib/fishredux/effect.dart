import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

///
/// 数据操作层
///

Effect<FishReduxPageState> buildEffect() {
  return combineEffects(<Object, Effect<FishReduxPageState>>{
    FishReduxPageAction.action: _onAction,
  });
}

void _onAction(Action action, Context<FishReduxPageState> ctx) {
  ctx.state.count++;
  ctx.dispatch(FishReduxPageActionCreator.onRefresh());
}
