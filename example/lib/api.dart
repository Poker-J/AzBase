

import 'package:az_base/services/http_method.dart';

class Api {

  //获取配置
  static getConfig({Map<String, dynamic> query}) {
    const url = '/api/v1/config';
    return HttpMethod.get(url, query: query);
  }
}