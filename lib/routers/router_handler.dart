import 'dart:convert';


import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';


/// 基类路由
Map<String, Handler> routersBaseHandler = {

};

/// 解析传递参数
Map paseMap(BuildContext context) {
  Map arguments;
  final runtimeType = context.settings.arguments.runtimeType;
  if (runtimeType.toString() == "_InternalLinkedHashMap<String, dynamic>") {
    arguments = context.settings.arguments;
  } else {
    arguments = json.decode(context.settings.arguments.toString());
  }
  arguments = arguments ?? {};
  return arguments;
}
