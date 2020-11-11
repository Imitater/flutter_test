import 'package:event_bus/event_bus.dart';
//Bus 初始化 
EventBus eventBus = EventBus();

//广播数据
class DrawContentEvent{  // ProductContentEvent 此为自己定义的广播名称。
  String str; DrawContentEvent(String str){ this.str=str; } 
}