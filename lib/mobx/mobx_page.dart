import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:state_compare/mobx/counter.dart';

class MobXPage extends StatelessWidget {
  const MobXPage();

  @override
  Widget build(BuildContext context) {
    // 获取Model
    final counter = Counter();
    return Scaffold(
      appBar: AppBar(
        title: Text('MobX Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('你点击的次数:'),
            // 被Observer包裹的widget。当被观察的值发生变化的时候将动态刷新
            Observer(
              builder: (_) => Text(
                // 直接绑定该值
                '${counter.value}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // 直接调用该方法
        onPressed: () => counter.increment(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}