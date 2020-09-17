import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_compare/blooc/counter_cubit.dart';

class BlocPage extends StatelessWidget {
  const BlocPage();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
        // 通过 BlocProvider 将 model 与子Widget的 context 进行绑定
        create: (context) => CounterCubit(),
        child: ValueView());
  }
}

class ValueView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bloc Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('你点击的次数:'),
            // 被 BlocBuilder 包裹的视图，当model层执行emit方法后
            // 会再次执行builder 刷新Widget
            // 可以通过 builder 的countState读取Data
            // 也可以通过 context.bloc<CounterCubit>().state 读取Data
            // BlocBuilder 创建的时候必须绑定一个model和一个Data
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, countState) => Text(
                '${context.bloc<CounterCubit>().state.count}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // context.bloc<CounterCubit>() 读取到 model
        onPressed: () => context.bloc<CounterCubit>().increment(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
