import 'package:az_base/commons/configs/style.dart';
import 'package:az_base/widgets/index.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../index.dart';
export 'package:permission_handler/permission_handler.dart';

///权限请求工具类
class PermissionUtil {
  ///检查是否有权限
  ///[permission] 权限
  ///return 是否有权限
  Future<bool> checkPermissions(Permission permission) async {
    var status = await permission.status;
    if (status.isDenied) {
      return false;
    } else if (status.isGranted) {
      return true;
    } else if (status.isPermanentlyDenied) {
      // 永久拒绝，仅支持Android
      return false;
    } else if (status.isRestricted) {
      //仅支持iOS
      return false;
    } else {
      return false;
    }
  }

  ///获取单个权限
  ///[permissions] 权限请求组
  ///[showDigLog] 可选  //是否先显示提示框 然后在获取权限
  ///[tip] 自定义提示内容
  Future<bool> requestPermissions(Permission permissions,
      {bool showDialog = false, String tip = ''}) async {
    //检查是否有权限
    bool isPermissions = await checkPermissions(permissions);
    if (isPermissions) {
      return true;
    } else {
      //先显示弹窗
      if (showDialog) {
        return showRequestPermission(permissions, tip);
      } else {
        return request(permissions, tip);
      }
    }
  }

  ///获取多个权限
  ///[permissions] 权限组
  Future<Map<Permission, PermissionStatus>> requestPermissionsGroup(
      List<Permission> permissions) async {
    return await permissions.request();
  }

  ///显示提示框
  ///[permission] 权限
  Future<bool> showRequestPermission(Permission permission, String tip) {
    final tipData = getPermissionTip(permission, tip, false);
    return showDialog(
        context: Get.context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            contentPadding: EdgeInsets.all(0),
            content: Container(
              width: Const.screenWidth * 0.9,
              height: Const.screenHeight * 0.4,
              padding: EdgeInsets.symmetric(horizontal: getAdapterSize(15)),
              child: Column(
                children: [
                  SizedBox(
                    height: getAdapterSize(10),
                  ),
                  AzImage(
                    tipData[0],
                    width: getAdapterSize(200),
                    height: getAdapterSize(140),
                  ),
                  SizedBox(
                    height: getAdapterSize(10),
                  ),
                  Text(
                    tipData[1],
                    style: TextStyle(
                        fontSize: getAdapterSize(14), color: Colours.title),
                  ),
                  SizedBox(
                    height: getAdapterSize(20),
                  ),
                  Text(
                    tipData[2],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: getAdapterSize(12), color: Colours.subTitle),
                  ),
                  Expanded(
                    child: Container(),
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
                            Navigator.pop(context, false);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              '暂不',
                              style: TextStyle(
                                  fontSize: getAdapterSize(14),
                                  color: Colours.title),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 0.5,
                        height: getAdapterSize(50),
                        color: Colours.border,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () async {
                            await request(permission, tip).then((value) {
                              if (value != null) {
                                Navigator.pop(context, value);
                              } else {}
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              '获取',
                              style: TextStyle(
                                  fontSize: getAdapterSize(14),
                                  color: Colours.primary),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }

  ///显示禁止提示弹框
  ///[Permission] 权限
  void showSetDialog(Permission permission, String tip) {
    LogUtil.e('-------------------->');
    final tipData = getPermissionTip(permission, tip, true);
    showDialog(
        context: Get.context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            contentPadding: const EdgeInsets.all(0),
            content: Container(
              width: Const.screenWidth * 0.9,
              height: Const.screenHeight * 0.4,
              padding: EdgeInsets.symmetric(horizontal: getAdapterSize(15)),
              child: Column(
                children: [
                  SizedBox(
                    height: getAdapterSize(10),
                  ),
                  AzImage(
                    tipData[0],
                    width: getAdapterSize(200),
                    height: getAdapterSize(140),
                  ),
                  SizedBox(
                    height: getAdapterSize(10),
                  ),
                  Text(
                    tipData[1],
                    style: TextStyle(
                        fontSize: getAdapterSize(14), color: Colours.title),
                  ),
                  SizedBox(
                    height: getAdapterSize(20),
                  ),
                  Text(
                    tipData[2],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: getAdapterSize(12), color: Colours.subTitle),
                  ),
                  Expanded(
                    child: Container(),
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
                            Navigator.pop(context);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              '暂不',
                              style: TextStyle(
                                  fontSize: getAdapterSize(14),
                                  color: Colours.title),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 0.5,
                        height: getAdapterSize(50),
                        color: Colours.border,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                            openAppSettings(); //打开设置页面
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              '去设置',
                              style: TextStyle(
                                  fontSize: getAdapterSize(14),
                                  color: Colours.primary),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }

  ///根据权限类型获取提示框需要的显示的数据
  ///[permission] 权限名称
  List<String> getPermissionTip(
      Permission permission, String tips, bool isSet) {
    List<String> tipData = [];
    String iconUrl = '';
    String title = '';
    String tip = '';
    if (permission == Permission.location) {
      iconUrl = 'assets/images/permission/icon_location.png';
      title = '开启地理位置权限';
      tip = '为了获取您的地理位置,基于您的明示授权,需要打开位置权限。';
    } else if (permission == Permission.camera) {
      iconUrl = 'assets/images/permission/icon_camera.png';
      title = '开启相机权限';
      tip = '用于二维码扫描、视频通话、拍照等功能，需要打开相机权限。';
    } else if (permission == Permission.contacts) {
      iconUrl = 'assets/images/permission/icon_contacts.png';
      title = '开启通讯录权限';
      tip =
          '为了向您推荐通讯录内的好友，需要读取您的联系人列表。我们不会储存您的联系人列表，只获取您选择联系人的手机号码至服务器储存,传输存储严格加密，绝不作其他用途。';
    } else if (permission == Permission.phone) {
      iconUrl = 'assets/images/permission/icon_phone.png';
      title = '开启手机设备权限';
      tip = '为了保障您的账户安全，识别账户异常状态，应用商店升级，我们将收集您所使用的设备相关信息。';
    } else if (permission == Permission.storage) {
      iconUrl = 'assets/images/permission/icon_storage.png';
      title = '开启手机读取储存权限';
      tip = '用于设置头像、上传资料、发送图片等功能。';
    }
    if (tips.isNotEmpty) {
      tip = tips;
    }
    if (isSet) {
      title += '被禁止获取';
    }
    return tipData..add(iconUrl)..add(title)..add(tip);
  }

  ///请求权限
  Future<bool> request(Permission permission, String tip) async {
    final status = await permission.request();
    if (status.isDenied) {
      LogUtil.e('请求${permission.toString()}------拒绝');
      return false;
    } else if (status.isGranted) {
      LogUtil.e('请求${permission.toString()}------同意');
      return true;
    } else if (status.isPermanentlyDenied) {
      LogUtil.e('请求${permission.toString()}------永久拒绝');
      // 永久拒绝，仅支持Android
      Future.delayed(Duration(milliseconds: 500)).then((value) {
        showSetDialog(permission, tip);
      });
      return false;
    } else if (status.isRestricted) {
      LogUtil.e('ios--请求${permission.toString()}------永久拒绝');
      return false;
      //仅支持iOS
    } else {
      //
    }
    return false;
  }
}
