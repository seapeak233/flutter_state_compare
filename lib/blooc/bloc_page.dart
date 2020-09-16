import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_compare/blooc/counter_cubit.dart';

class BlocPage extends StatelessWidget {
  const BlocPage();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
        create: (context) => CounterCubit(), child: ValueView());
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
            Text(
              '你点击的次数:',
            ),
            // Wrapping in the Observer will automatically re-render on changes to counter.value
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, countState) =>
                  Text(
                '${context.bloc<CounterCubit>().state.count}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.bloc<CounterCubit>().increment(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
