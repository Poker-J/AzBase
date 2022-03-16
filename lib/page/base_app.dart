import 'package:az_base/commons/configs/const.dart';
import 'package:az_base/commons/langs/index.dart';
import 'package:az_base/commons/themes/index.dart';
import 'package:az_base/routers/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

///基类
class BaseApp extends StatelessWidget {
  const BaseApp({Key key, this.child, this.initBindingFunction}) : super(key: key);

 final Function initBindingFunction;
 final Widget  child;

  @override
  Widget build(BuildContext context) {
    // final route = faraday.wrapper(
    //   router.generator,
    //   switchPageAnimation: (currentRoute) {
    //     if (currentRoute['route'].isNull) {
    //       return (context, child) {
    //         return AnimatedSwitcher(
    //           duration: Duration(seconds: 1),
    //           child: child,
    //           transitionBuilder: (child, animation) =>
    //               RotationTransition(turns: animation, child: child),
    //         );
    //       };
    //     }
    //     return null;
    //   },
    //   // flutter 自定义过渡页背景
    //   nativeContainerBackgroundColorProvider: (context, {route}) =>
    //   CupertinoColors.secondarySystemBackground,
    // );
    //IM屏幕适配方式初始化
    return ScreenUtilInit(
      designSize: const Size(375.0, 812.0),
      builder: () {
        return GetMaterialApp(
          navigatorKey: Get.key,
          theme: lightThemeData,
          debugShowCheckedModeBanner: false,
          onGenerateRoute:router.generator,
          translations: TranslationService(),
          locale: TranslationService.locale,
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            //const FallbackCupertinoLocalisationsDelegate(),
          ],
          home: child ?? Container(
            width: Const.screenWidth,
            height: Const.screenHeight,
            color: Colors.red,
          ),
          initialBinding: InitBinding(initBindingFunction ?? (){}),
          supportedLocales: const [Locale('zh', 'CN'), Locale('en', 'US')],
          fallbackLocale: TranslationService.fallbackLocale,
        );
      },
    );
  }
}

/// 初始化数据类
class InitBinding extends Bindings {

  InitBinding(this.function);

  Function function;
  @override
  void dependencies() {
    // Get.put(ImController());
    // Get.put(JPushController());
    function();
  }
}