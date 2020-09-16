# mobx 生成文件步骤
创建 counter.dart
添加 part 'counter.g.dart';
添加 class Counter = CounterMobx with _$Counter;
执行命令: flutter packages pub run build_runner build
删除之内再生成: flutter packages pub run build_runner build --delete-conflicting-outputs
实时更新.g文件: flutter packages pub run build_runner watch


# provider可以在项目顶层配置各种全局量
runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: ATheme()),
        ChangeNotifierProvider.value(value: LoginInfo()),
      ],
      child: MaterialApp(
        home: StartPage(),
      ),
    ),
  );
  
# bloc可以在项目顶层配置各种全局量
runApp(
  BlocProvider<ApplicationBloc>(
    bloc: ApplicationBloc(),
    child: MyApp(),
  )
);