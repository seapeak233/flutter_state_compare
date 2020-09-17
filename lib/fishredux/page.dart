import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

/// 总页面 将所有的事件，触发器，初始化进行绑定
class FishReduxPagePage extends Page<FishReduxPageState, Map<String, dynamic>> {
  FishReduxPagePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<FishReduxPageState>(
                adapter: null,
                slots: <String, Dependent<FishReduxPageState>>{
                }),
            middleware: <Middleware<FishReduxPageState>>[
            ],);
}
