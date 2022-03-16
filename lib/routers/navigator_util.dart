import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:get/get.dart';

import './routes.dart';

///检查传递的参数
checkParams(Map<String, dynamic> params) {
  var query = '';
  if (params != null) {
    int index = 0;
    for (var key in params.keys) {
      final value = Uri.encodeComponent(params[key].toString());
      if (index == 0) {
        query = '?';
      } else {
        query += '&';
      }
      query += '$key=$value';
      index++;
    }
  }
  return query;
}

///路由跳转工具类
class NavigatorUtil {
  static TransitionType transition = TransitionType.inFromRight;

  // 跳转
  static void jump(String route, {Map<String, dynamic> params, transition = TransitionType.inFromRight}) {
    LogUtil.e("-------路由地址--------->${route + checkParams(params)}");
    router.navigateTo(Get.context, route + checkParams(params), transition: transition, routeSettings: RouteSettings(arguments: params));
  }

  // 替换当前页
  static void replace(String route, {Map<String, dynamic> params}) {
    LogUtil.e('-------路由地址--------->${route + checkParams(params)}');
    router.navigateTo(Get.context, route + checkParams(params), replace: true, transition: transition,routeSettings: RouteSettings(arguments: params) );
  }

  //带返回值跳转
  static void jumpResult(String route, {Map<String, dynamic> params, Function result}) {
    LogUtil.e('-------路由地址--------->${route + checkParams(params)}');
    router.navigateTo(Get.context, route + checkParams(params), transition: transition, routeSettings: RouteSettings(arguments: params)).then((value) {
      result(value);
    });
  }

  // 返回
  static void goBack([dynamic result]) {
    router.pop(Get.context, result);
  }

  // 跳转到主页面IndexPage并删除当前路由
  static void goToHomeRemovePage() {
    //router.navigateTo(Get.context, Routes.home, clearStack: true, transition: TransitionType.fadeIn);
  }

  // 跳转到登录页并删除当前路由
  static void goToLoginRemovePage() {
    //router.navigateTo(Get.context, Routes.login, clearStack: true, transition: transition);
  }

  // 跳转到系统升级页面页面并删除当前路由
  static void goToSystemUpgradePage({Map<String, dynamic> params}) {
    // router.navigateTo(Get.context, Routes.sysUpgradePage + checkParams(params),
    //     transition: transition, clearStack: true, routeSettings: RouteSettings(arguments: params));
  }
}
