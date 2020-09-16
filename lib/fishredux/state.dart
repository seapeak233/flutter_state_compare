import 'package:fish_redux/fish_redux.dart';


///
/// 数据层
///

class FishReduxPageState implements Cloneable<FishReduxPageState> {

  int count = 0;

  @override
  FishReduxPageState clone() {
    return FishReduxPageState()..count = count;
  }
}

FishReduxPageState initState(Map<String, dynamic> args) {
  return FishReduxPageState();
}
