import 'package:flutter/widgets.dart';

class CountModel with ChangeNotifier {
  //声明私有变量
  int count = 0;
  /// 修改当前name
  void increment() {
    count++;
    //告诉正在监听此 Listenable 的 widgets 进行重新 build
    notifyListeners();
  }
}