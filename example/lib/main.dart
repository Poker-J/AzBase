import 'package:az_base/index.dart';
import 'package:az_base/page/base_app.dart';
import 'package:az_base/widgets/az_appbar/az_appbar.dart';
import 'package:az_base_example/test_list_page.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:az_base/az_base.dart';

import 'on_request.dart';

void main() {
  AzBase.initSDK({});
  AzBase.initApiSDK('https://dock-api.cqgzy.cn',
      requestListener: OnRequestList());
  SpUtils.setEncryption(true);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseApp(
      child: const TestListPage(),
      initBindingFunction: () {},
    );
  }
}
