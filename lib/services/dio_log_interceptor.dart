import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'result_data.dart';

///日志拦截器
class DioLogInterceptor extends Interceptor {
  ///请求前
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log('url: ${_getUrl(options)}', name: '${options.method}请求开始:${DateTime.now()}');
    log(json.encode(options.headers), name: 'headers');
    log(json.encode(options.queryParameters), name: 'query');
    try{
      log(json.encode(options.data), name: 'body');
    }catch(err){
      log(options.data.toString(), name: 'body');
    }
    handler.next(options);
  }

  ///响应前
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log('url: ${_getUrl(response.requestOptions)}, statusCode: ${response.statusCode}', name: '${response.requestOptions.method}请求结束:${DateTime.now()}');
    if (response.isRedirect == true) {
      log(response.headers[HttpHeaders.locationHeader][0], name: 'redirect');
    }
    ResultData resultData = response.data as ResultData;
    log(resultData.data.toString(), name: 'result');
    handler.next(response);
  }

  ///出错前
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    log('url: ${_getUrl(err.requestOptions)}, statusCode: ${err?.response?.statusCode}', name: '${err.requestOptions?.method}请求异常:${DateTime.now()}');
    log(err.response?.toString() ?? '', name: '请求异常信息');
    //上报接口错误日志
    putHttpErrorLog(err);
    handler.next(err);
  }

  ///获取请求地址
  String _getUrl(RequestOptions requestOptions) {
    String path = requestOptions.path;
    if (!path.startsWith('http')) {
      return requestOptions.baseUrl + path;
    } else {
      return path;
    }
  }

  ///接口错误日志上报
  void putHttpErrorLog(DioError err){
    // 待实现接口错误日志上报
  }
}
