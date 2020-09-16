import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

///
/// 视图层
///

Widget buildView(FishReduxPageState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text('FishRedux Counter'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '你点击的次数:',
          ),
          Text(
            '${state.count}',
            style: Theme.of(viewService.context).textTheme.headline4,
          ),
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () => dispatch(FishReduxPageActionCreator.onAction()),
      tooltip: 'Increment',
      child: Icon(Icons.add),
    ),
  );
}
