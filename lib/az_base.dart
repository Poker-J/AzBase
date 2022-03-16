import 'dart:async';
import 'dart:io';

import 'package:az_base/routers/routes.dart';
import 'package:fluro/fluro.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'services/config.dart';
import 'services/response_interceptor.dart';

class AzBase {
  static const MethodChannel _channel = MethodChannel('az_base');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  /// *
  ///   初始化SDK
  ///   routersMap 项目路由
  ///   aMapAndroidKey 高德地图androidKey
  ///   aMapIosKey 高德地图iosKey
  ///   designW 设计图宽度
  ///   designH 设计图高度
  static initSDK(
    Map<String, Handler> routersMap, {
    String aMapAndroidKey = '',
    String aMapIosKey = '',
    double designW = 375.0,
    double designH = 812.0,
  }) async {
    BaseRoutes.initRoutes(routersMap);
    WidgetsFlutterBinding.ensureInitialized();
    if (Platform.isAndroid) {
      //设置透明状态栏
      SystemChrome.setSystemUIOverlayStyle(
          const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    }
    // 初始化设计尺寸
    setDesignWHD(designW, designH);
    //初始化本地缓存
    await SpUtil.getInstance();
    // await enableFluttifyLog(true);
    //高德SDK
    //AMapUtils.initKey('6acfc895a49857e69f1beda6b279fb3a', '6acfc895a49857e69f1beda6b279fb3a');
    //北海
    // defineKrakenCustomElements();
    // initNavigationDelegate();
    // await AmapService.instance.init(
    //     androidKey: '8a89b6f0609b512eeb13e6eef9152918',
    //     iosKey: ''
    // );
  }

  ///初始化网络请求
  ///baseUrl  域名地址
  ///connectTimeout  超时时间
  static initApiSDK(
    String baseUrls, {
    int connectTimeouts = 10000,
    OnRequestListener requestListener,
  }) {
    //请求前回调监听
    onRequestListener = requestListener;
    //域名
    baseUrl = baseUrls;
    //超时时间
    connectTimeout = connectTimeouts;
  }
}
