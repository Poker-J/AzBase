import 'package:fluro/fluro.dart';
import './router_handler.dart';

final router = FluroRouter();
/// 路由基类
class BaseRoutes {
  //小程序调用
  static void initRoutes(Map<String, Handler> routersMap) {
    //添加项目自带的路由
    routersBaseHandler
      ..addAll(routersMap)
      ..forEach((key, value) {
        router.define(key, handler: value);
      });
    router.notFoundHandler = Handler(handlerFunc: (context, params) {
      print('ROUTE WAS NOT FOUND !!!');
      return;
    });
  }
}
