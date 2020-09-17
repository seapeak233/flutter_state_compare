import 'package:fish_redux/fish_redux.dart';

/// 事件注册层
enum FishReduxPageAction { increment, refresh }

class FishReduxPageActionCreator {
  // 注册一个值+1的事件
  static Action onIncrement() {
    return const Action(FishReduxPageAction.increment);
  }

  // 注册一个视图刷新的事件
  static Action onRefresh() {
    return const Action(FishReduxPageAction.refresh);
  }
}
