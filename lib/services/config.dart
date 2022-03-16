import 'package:dio_http_cache/dio_http_cache.dart';

//域名
String baseUrl = '';
///请求超时配置
int connectTimeout = 10000;
const int receiveTimeout = 10000;



///接口缓存管理器
DioCacheManager dioCacheManager;

// 设置缓存
// options: buildCacheOptions(Duration(days: 7), subKey: query.toString()),

///获取缓存管理器对象
DioCacheManager getCacheManager() {
  dioCacheManager ??= DioCacheManager(CacheConfig(baseUrl: baseUrl));
  return dioCacheManager;
}

///清除单个接口缓存
void clearApiCache(String url, {String subKey}) {
  getCacheManager().delete(url, subKey: subKey);
}

///清除全部接口缓存
void clearAllApiCache(String url, {String subKey}) {
  getCacheManager().clearAll();
}

///缓存的url路径
class DioCacheUrls {
  //static String getInfo = '$apiMsg/open/v1.2/statuses';
}

///不需要登录的url白名单
const List<String> notTokenWhiteList = [

];
