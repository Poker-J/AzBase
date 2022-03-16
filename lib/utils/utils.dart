import 'dart:convert';

import 'package:day/day.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:day/i18n/zh_cn.dart' as zh_cn_locale;

///颜色转化
class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    var hexColorNew = hexColor.trim().toUpperCase().replaceAll('#', '');
    if (hexColorNew.length == 6) {
      hexColorNew = 'FF$hexColorNew';
    } else if (hexColorNew.length == 3) {
      hexColorNew =
          'FF${hexColorNew.split('').map((item) => '$item$item').join('')}';
    }
    return int.parse(hexColorNew, radix: 16);
  }
}

// dart的Color转16进制的hex
String colorHex(Color color) {
  return '#${color.value.toRadixString(16)}';
}

///像素转化
///[dp]需要转化的像素
double getAdapterSize(double dp) {
  return ScreenUtil.getInstance().getAdapterSize(dp);
}

///提示
///[msg] 提示内容
void showToast(String msg) {
  if (msg == null) {
    return;
  }
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    backgroundColor: Color(0xA0000000),
    textColor: Colors.white,
    fontSize: 14.0,
  );
}

// 取消提示
void hideToast() {
  Fluttertoast.cancel();
}

/*
  * Base64加密
  */
String encodeBase64(String data) {
  var content = utf8.encode(data);
  var digest = base64Encode(content);
  return digest;
}

/*
  * Base64解密
  */
String decodeBase64(String data) {
  return String.fromCharCodes(base64Decode(data));
}

///防止按钮重复点击
///[onTap] 点击后执行方法
///[time]  可选参数间隔时长 默认1000
bool _isCan = true;

void onTapRepetition(Function onTap, {int time = 1000}) {
  // 防重复提交
  if (_isCan) {
    onTap();
    _isCan = false;
    // 500 毫秒内 不能多次点击
    Future.delayed(Duration(milliseconds: time), () {
      _isCan = true;
    });
  }
}

bool verifyPhone(String phone) {
  if (phone.isEmpty) {
    showToast('请输入手机号');
    return false;
  }
  if (!RegexUtil.isMobileExact(phone)) {
    showToast('请输入正确的手机号');
    return false;
  }
  return true;
}

// 验证密码标准
bool verifyPassword(String password) {
  if (!RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,64}$')
      .hasMatch(password)) {
    showToast('密码需包含大小写字母、数字');
    return false;
  }
  return true;
}

//根据时间获取星期几
String getWeekString(DateTime time) {
  final weeks = [
    '周一',
    '周二',
    '周三',
    '周四',
    '周五',
    '周六',
    '周日',
  ];
  return weeks[time.weekday - 1];
}

//时间转化
String getFormatTimeInterval(String begin, String end) {
  var startTime = Day.fromString(begin).useLocale(zh_cn_locale.locale);
  var endTime = Day.fromString(end).useLocale(zh_cn_locale.locale);
  var year = Day.fromString(begin).format('YYYY');
  var diffDay = Day.fromString(begin).diff(Day.fromString(end), 'd');
  var startTimeStr = Day().year().toString() == year.toString()
      ? startTime.format('MM月DD日(WWWW) HH:mm')
      : startTime.format('YYYY年MM月DD日(WWWW) HH:mm');
  var endTimeStr = endTime.format('HH:mm');

  if (diffDay == 1) {
    endTimeStr = '次日' + endTime.format('HH:mm');
  } else if (diffDay > 1) {
    endTimeStr =
        Day.fromString(end).format('YYYY').toString() == year.toString()
            ? endTime.format('MM月DD日 HH:mm')
            : endTime.format('YYYY年MM月DD日 HH:mm');
  }
  return startTimeStr + ' ~ ' + endTimeStr;
}

// 消息时间显示格式化
String messageTimeFormat(String date) {
  final d1 = Day();
  final d2 = Day.fromString(date);
  final diffDay = d1.diff(d2, 'd');
  if (diffDay == 0) {
    final h = d2.format('H');
    if (int.parse(h) < 12) {
      return '上午${d2.format('hh:mm')}';
    } else {
      return '下午${d2.format('hh:mm')}';
    }
  } else if (diffDay == 1) {
    return '昨天';
  } else {
    return d2.format('M月D日');
  }
}

//获取文件类型
String getFileType(String url) {
  final type = {
    '.jpg|.gif|.png|.jpeg|.bmp': 'image',
    '.doc|.docx': 'doc',
    '.xls|.xlsx|.csv': 'excel',
    '.ppt|.pptx|.pptm|.potx|.potm|.pot|.ppsx|.ppsm|.pps|.ppam|.ppa|.xml|.odp':
        'ppt',
    '.pdf': 'pdf',
    '.txt': 'txt',
    '.mp3|.wma|.avi|.rm': 'audio',
    '.wmv|.asf|.flv|.mp4|.rmvb': 'video',
    '.rar|.zip|.tar|.cab|.7z': 'compress'
  };
  final extension = url.substring(url.lastIndexOf('.'), url.length);
  for (final key in type.entries) {
    final reg = RegExp(key.key);
    if (reg.hasMatch(extension)) {
      return key.value;
    }
  }
  return 'other';
}

///根据经纬度获取地图缩略图
String getMapUrl(double latitude, double longitude) {
  String url = "http://restapi.amap.com/v3/staticmap?location=" +
      longitude.toString() +
      "," +
      latitude.toString() +
      "&zoom=16&scale=1&size=600*300&markers=mid,,A:" +
      longitude.toString() +
      "," +
      latitude.toString() +
      "&key=" +
      "ee95e52bf08006f63fd29bcfbcf21df0";
  return url;
}

// 消息时间显示格式化
String messageTempletTimeFormat(dynamic date) {
  final d1 = Day();
  var d2;
  if (date.runtimeType == int) {
    d2 = Day.fromUnix(date);
  } else {
    d2 = Day.fromString(date);
  }
  final diffDay = d1.diff(d2, 'd');
  if (diffDay == 0) {
    final h = d2.format('H');
    if (int.parse(h) < 12) {
      return '上午${d2.format('hh:mm')}';
    } else {
      return '下午${d2.format('hh:mm')}';
    }
  } else if (diffDay == 1) {
    final h = d2.format('H');
    if (int.parse(h) < 12) {
      return '昨天 上午${d2.format('hh:mm')}';
    } else {
      return '昨天 下午${d2.format('hh:mm')}';
    }
  } else {
    final h = d2.format('H');
    var date = d2.format('M月DD日');
    if (int.parse(d2.format('YYYY')) < int.parse(d1.format('YYYY'))) {
      date = d2.format('YYYY年M月DD日');
    }
    if (int.parse(h) < 12) {
      return '$date 上午${d2.format('hh:mm')}';
    } else {
      return '$date 下午${d2.format('hh:mm')}';
    }
  }
}

/// 关闭键盘
void closeKeyboard(BuildContext context) {
  FocusScopeNode currentFocus = FocusScope.of(context);

  /// 键盘是否是弹起状态
  if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
    FocusManager.instance.primaryFocus.unfocus();
  }
}
