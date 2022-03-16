
import 'package:az_base/commons/configs/style.dart';
import 'package:az_base/index.dart';
import 'package:az_base/services/index.dart';
import 'package:az_base/widgets/az_appbar/az_appbar.dart';
import 'package:flutter/material.dart';

import 'api.dart';

class TestListPage extends StatefulWidget {
  const TestListPage({Key key}) : super(key: key);

  @override
  _TestListPageState createState() => _TestListPageState();
}

class _TestListPageState extends State<TestListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(context,title: 'AzBase测试示例'),
      body: ListView(
        children: [
          _buildBut('测试网络请求获取',() async{
            ResultData res = await Api.getConfig();
            if (res.isSuccess) {
              print('------------------>${res.data.toString()}');
            }
          })
        ],
      ),
    );
  }

  ///按钮
  Widget _buildBut(String title, Function onTap) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        height: getAdapterSize(44),
        margin: EdgeInsets.symmetric(horizontal: getAdapterSize(20), vertical: getAdapterSize(10)),
        decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.all(Radius.circular(getAdapterSize(12)))),
        alignment: Alignment.center,
        child: Text(title, style: TextStyle(fontSize: getAdapterSize(14), color: Colours.white)),
      ),
    );
  }
}
