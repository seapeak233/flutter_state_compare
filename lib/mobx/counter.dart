import 'package:mobx/mobx.dart';

// 合并 counter.g.dart 到该文件路径
part 'counter.g.dart';
// 混合生成的文件创建 Model
class Counter = _Counter with _$Counter;
// 注册model
abstract class _Counter with Store {
  //标注为被观察字段
  @observable
  int value = 0;
  //标注为操作（会自动刷新数据）
  @action
  void increment() {
    value++;
  }
}