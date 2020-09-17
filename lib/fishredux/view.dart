import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

/// 视图层 state是页面的data，dispatch是事件分发器，viewService内包含context
Widget buildView(FishReduxPageState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text('FishRedux Counter'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('你点击的次数:'),
          // 直接展示 State 内的值
          Text(
            '${state.count}',
            style: Theme.of(viewService.context).textTheme.headline4,
          ),
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      // 分发一个在effect注册的事件，将值+1
      onPressed: () => dispatch(FishReduxPageActionCreator.onIncrement()),
      tooltip: 'Increment',
      child: Icon(Icons.add),
    ),
  );
}
