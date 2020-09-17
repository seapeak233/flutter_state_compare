import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:state_compare/provider/count_model.dart';

class ProviderPage extends StatelessWidget {
  const ProviderPage();

  @override
  Widget build(BuildContext context) {
    // 在外层提供数据
    return ChangeNotifierProvider(
        // 创建该widget下分享的 model
        create: (_) => CountModel(),
        builder: (context, w) => Scaffold(
              appBar: AppBar(
                title: Text('Provider Counter'),
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('你点击的次数:'),
                    Text(
                      // 通过Provider.of<T>(context) 获取model
                      '${Provider.of<CountModel>(context).count}',
                      style: Theme.of(context).textTheme.headline4,
                    )
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () =>
                    // 同上 获取model后调用方法
                    Provider.of<CountModel>(context, listen: false).increment(),
                tooltip: 'Increment',
                child: Icon(Icons.add),
              ),
            ));
  }
}
