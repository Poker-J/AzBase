import 'dart:io';

import 'package:az_base/commons/configs/style.dart';
import 'package:az_base/routers/navigator_util.dart';
import 'package:az_base/widgets/index.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../index.dart';

///隐私政策组件
class PrivacyWidget extends StatelessWidget {
  const PrivacyWidget({
    Key key,
    this.confirmOnTap,
    this.agreementOnTap,
    this.policyOnTap,
  }) : super(key: key);

  //确认回调
  final Function confirmOnTap;

  //隐私协议点击回调
  final Function policyOnTap;

  //隐私协议点击回调
  final Function agreementOnTap;

  @override
  Widget build(BuildContext context) {
    final textColor = Colours.text;
    final textSize = getAdapterSize(12);
    return WillPopScope(
      onWillPop: () async => false,
      child: Container(
        color: Colors.black.withOpacity(0.45),
        width: Const.screenWidth,
        height: Const.screenHeight,
        alignment: Alignment.center,
        child: Container(
          width: Const.screenWidth * 0.78,
          height: Const.screenHeight * 0.55,
          padding: EdgeInsets.symmetric(horizontal: getAdapterSize(15), vertical: getAdapterSize(10)),
          decoration: BoxDecoration(color: Colours.white, borderRadius: BorderRadius.all(Radius.circular(getAdapterSize(5)))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: getAdapterSize(10),
              ),
              Text(
                '温馨提示',
                style: TextStyle(fontSize: getAdapterSize(16), color: Colours.title, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: getAdapterSize(10),
              ),
              Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: '欢迎您使用本应用,请您阅读并同意',
                              style: TextStyle(
                                fontSize: textSize,
                                color: textColor,
                              )),
                          TextSpan(
                            text: '《隐私政策》',
                            style: TextStyle(
                              fontSize: textSize,
                              color: Colours.primary,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                policyOnTap();
                              },
                          ),
                          TextSpan(
                              text: '和',
                              style: TextStyle(
                                fontSize: textSize,
                                color: textColor,
                              )),
                          TextSpan(
                            text: '《用户协议》',
                            style: TextStyle(
                              fontSize: textSize,
                              color: Colours.primary,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                agreementOnTap();
                              },
                          ),
                          TextSpan(
                              text: ',特向您说明如下',
                              style: TextStyle(
                                fontSize: textSize,
                                color: textColor,
                              )),
                        ]),
                      ),
                      SizedBox(
                        height: getAdapterSize(15),
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: '1.为保障您的账户安全,识别账户异常状态,我们将收集您所使用的设备相关信息;',
                              style: TextStyle(
                                fontSize: textSize,
                                color: textColor,
                              )),
                        ]),
                      ),
                      SizedBox(
                        height: getAdapterSize(15),
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: '2.开启地理位置，实时保护账户安全，账号异地异常登录时，我们将及时提醒你。,我们将收集您所使用的',
                              style: TextStyle(
                                fontSize: textSize,
                                color: textColor,
                              )),
                          TextSpan(
                              text: '设备位置信息;',
                              style: TextStyle(
                                //fontWeight: FontWeight.bold,
                                fontSize: textSize,
                                color: Colours.title,
                              )),
                        ]),
                      ),
                      SizedBox(
                        height: getAdapterSize(15),
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: '3.为提升您的浏览体验,我们将缓存部分首页图片,为此需读取您的',
                              style: TextStyle(
                                fontSize: textSize,
                                color: textColor,
                              )),
                          TextSpan(
                              text: 'SD卡权限',
                              style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                fontSize: textSize,
                                color: Colours.title,
                              )),
                          TextSpan(
                              text: ',如您需要更换头像或者向客服提交图片信息时需要调取相册权限,但我们不会主动读取您的SD卡数据;',
                              style: TextStyle(
                                fontSize: textSize,
                                color: textColor,
                              )),
                        ]),
                      ),
                      SizedBox(
                        height: getAdapterSize(15),
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: '4.若您需要联系通讯录好友可直接点击拨打电话,我们将申请使用您',
                              style: TextStyle(
                                fontSize: textSize,
                                color: textColor,
                              )),
                          TextSpan(
                              text: '拨打电话的权限',
                              style: TextStyle(
                                //fontWeight: FontWeight.bold,
                                fontSize: textSize,
                                color: Colours.title,
                              )),
                          TextSpan(
                              text: ';',
                              style: TextStyle(
                                fontSize: textSize,
                                color: textColor,
                              )),
                        ]),
                      ),
                      SizedBox(
                        height: getAdapterSize(15),
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: '5.我们会采取业界先进的安全措施保护您的信息安全;',
                              style: TextStyle(
                                fontSize: textSize,
                                color: textColor,
                              )),
                        ]),
                      ),
                      SizedBox(
                        height: getAdapterSize(15),
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: '6.您可以在系统中撤回授权,或进入 App 内设置,删除,修改个人信息,我们也会提供注销账户的方式;',
                              style: TextStyle(
                                fontSize: textSize,
                                color: textColor,
                              )),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: getAdapterSize(20),
              ),
              AzInkWell(
                onTap: () {
                  confirmOnTap();
                  NavigatorUtil.goBack();
                },
                child: Container(
                  height: getAdapterSize(44),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: Colours.primary, borderRadius: BorderRadius.all(Radius.circular(getAdapterSize(4)))),
                  child: Text(
                    '同意',
                    style: TextStyle(fontSize: getAdapterSize(14), color: Colours.white),
                  ),
                ),
              ),
              SizedBox(
                height: getAdapterSize(10),
              ),
              AzInkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      opaque: false,
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return PrivacyDialogPage();
                      }));
                },
                child: Container(
                  height: getAdapterSize(34),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(getAdapterSize(4)))),
                  child: Text(
                    '不同意',
                    style: TextStyle(fontSize: getAdapterSize(14), color: Colours.text),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

///隐私政策确认页面
class PrivacyDialogPage extends StatelessWidget {
  const PrivacyDialogPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.45),
      body: Container(
        width: Const.screenWidth,
        height: Const.screenHeight,
        alignment: Alignment.center,
        child: Container(
          width: Const.screenWidth * 0.8 - getAdapterSize(10),
          height: getAdapterSize(160),
          decoration: BoxDecoration(color: Colours.white, borderRadius: BorderRadius.all(Radius.circular(getAdapterSize(4)))),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: getAdapterSize(20)),
                  child: Text(
                    '您需要同意隐私政策和用户协议,才能使用本应用,否则非常遗憾我们无法为您提供服务',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: getAdapterSize(12), color: Colours.text),
                  ),
                ),
              ),
              Container(
                height: 0.5,
                color: Colours.border,
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        exit(0);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          '关闭APP',
                          style: TextStyle(fontSize: getAdapterSize(14), color: Colours.title),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 0.5,
                    height: getAdapterSize(40),
                    color: Colours.border,
                  ),
                  Expanded(
                    child: AzInkWell(
                      onTap: () {
                        NavigatorUtil.goBack();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          '确定',
                          style: TextStyle(fontSize: getAdapterSize(14), color: Colours.primary),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
