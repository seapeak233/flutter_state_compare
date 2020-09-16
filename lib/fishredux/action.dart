import 'package:fish_redux/fish_redux.dart';

///
/// 事件注册层
///

enum FishReduxPageAction { action, refresh }

class FishReduxPageActionCreator {
  static Action onAction() {
    return const Action(FishReduxPageAction.action);
  }

  static Action onRefresh() {
    return const Action(FishReduxPageAction.refresh);
  }
}
