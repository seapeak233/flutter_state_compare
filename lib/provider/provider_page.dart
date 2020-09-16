import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:state_compare/provider/count_model.dart';


class ProviderPage extends StatelessWidget {
  const ProviderPage();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CountModel(),
        builder: (context, w) => Scaffold(
          appBar: AppBar(
            title: Text('Provider Counter'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '你点击的次数:',
                ),
                Text(
                  '${Provider
                      .of<CountModel>(context)
                      .count}',
                  style: Theme
                      .of(context)
                      .textTheme
                      .headline4,
                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => Provider.of<CountModel>(context, listen: false).increment(),
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        )
    );
  }
}
