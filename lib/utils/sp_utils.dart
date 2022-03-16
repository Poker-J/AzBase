import 'package:flustars/flustars.dart';


///本地缓存工具类
class SpUtils {

  ///是否需要加密
  static bool encryption = false;

  /// 设置是否加密
  static setEncryption(bool isEncryption){
    encryption = isEncryption;
  }

  ///putString
  ///[key]
  ///[value]
  static void putString(String key, String value) {
    SpUtil.putString(key, encryption ? value : value);
  }

  ///putBool
  ///[key]
  ///[value]
  static void putBool(String key, bool value) {
    SpUtil.putBool(key, encryption ? value : value);
  }

  ///getString
  ///[key]
  ///[defValue]  默认返回值
  static String getString(String key, {String defValue = ''}) {
    var value = SpUtil.getString(key, defValue: defValue);
    //是否需要解密返回
    if (encryption) {
      return value == defValue ? value : value;
    } else {
      return value;
    }
  }

  ///getBool
  ///[key]
  ///[defValue]  默认返回值
  static bool getBool(String key, {bool defValue = false}) {
    var value = SpUtil.getBool(key, defValue: defValue);
    //是否需要解密返回
    if (encryption) {
      return value == defValue ? value : value;
    } else {
      return value;
    }
  }

  ///putStringList
  ///[key]
  ///[value]
  static void putStringList(String key, List<String> value) {
    SpUtil.putStringList(key, encryption ? value : value);
  }

  ///getStringList
  ///[key]
  ///[defValue]  默认返回值
  static List<String> getStringList(String key, {List<String> defValue = const []}) {
    List<String> value = SpUtil.getStringList(key, defValue: defValue);
    //是否需要解密返回
    if (encryption) {
      return value;
    } else {
      return value;
    }
  }

  ///putObject 缓存实体对象
  ///[key]
  ///[value]
  static void putObject(String key, var obj) {
    SpUtil.putObject(key, encryption ? obj : obj);
  }

  ///getObject 获取缓存实体对象
  ///[key]
  ///[defValue]  默认返回值
  static T getObject<T>(String key, Function function) {
    return SpUtil.getObj(key, (value) {
      //是否需要解密返回
      if (encryption) {
        return function(value);
      } else {
        return function(value);
      }
    });
  }

  ///putObjectList 缓存实体对象列表
  ///[key]
  ///[value]
  static void putObjectList(String key, var obj) {
    SpUtil.putObjectList(key, encryption ? obj : obj);
  }

  ///getObjectList对象列表
  ///[key]
  ///[defValue]  默认返回值
  static List<T> getObjectList<T>(String key, Function function) {
    return SpUtil.getObjList(key, (value) {
      //是否需要解密返回
      if (encryption) {
        return function(value);
      } else {
        return function(value);
      }
    });
  }
}
