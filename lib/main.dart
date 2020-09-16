import 'package:flutter/material.dart';
import 'package:state_compare/blooc/bloc_page.dart';
import 'package:state_compare/fishredux/page.dart';
import 'package:state_compare/mobx/mobx_page.dart';
import 'package:state_compare/provider/provider_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: (setting) {
        return MaterialPageRoute(settings: setting, builder: (BuildContext c) {
          Widget result = Container();
          switch (setting.name) {
            case '/fish':
              result = FishReduxPagePage().buildPage(null);
              break;
            case '/mobx':
              result = MobXPage();
              break;
            case '/provider':
              result = ProviderPage();
              break;
            case '/bloc':
              result = BlocPage();
              break;
            default:
              break;
          }
          return result;
        });
      },
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('各种状态管理'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              child: Text('fish_redux'),
              color: Colors.deepOrange,
              onPressed: () {
                Navigator.of(context).pushNamed('/fish');
              },
              textColor: Colors.white,
              minWidth: 150,
            ),
            MaterialButton(
              child: Text('provider'),
              color: Colors.cyan,
              onPressed: () {
                Navigator.of(context).pushNamed('/provider');
              },
              textColor: Colors.white,
              minWidth: 150,
            ),
            MaterialButton(
              child: Text('mobx'),
              color: Colors.deepPurple,
              onPressed: () {
                Navigator.of(context).pushNamed('/mobx');
              },
              textColor: Colors.white,
              minWidth: 150,
            ),
            MaterialButton(
              child: Text('bloc'),
              color: Colors.indigo,
              onPressed: () {
                Navigator.of(context).pushNamed('/bloc');
              },
              textColor: Colors.white,
              minWidth: 150,
            ),
          ],
        ),
      ),
    );
  }

}
