import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

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
