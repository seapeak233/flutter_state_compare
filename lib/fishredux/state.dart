import 'package:fish_redux/fish_redux.dart';


/// 数据层
class FishReduxPageState implements Cloneable<FishReduxPageState> {
  int count = 0;

  // data层复写clone()的时候需要重新生成data
  @override
  FishReduxPageState clone() {
    return FishReduxPageState()..count = count;
  }
}

/// 初始化data层数据所执行的方法
FishReduxPageState initState(Map<String, dynamic> args) {
  return FishReduxPageState();
}
