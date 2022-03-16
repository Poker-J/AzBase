import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';

import 'http_code.dart';
import 'result_data.dart';
import 'dio_log_interceptor.dart';
import 'config.dart';
import '../utils/loading.dart';
import 'response_interceptor.dart';

///网络请求类
class HttpManager {
  static final HttpManager _instance = HttpManager._internal();
  Dio _dio;

  //构造方法
  factory HttpManager() => _instance;

  ///通用全局单例，第一次使用时初始化
  HttpManager._internal() {
    _dio = Dio(BaseOptions(
      //url
      baseUrl: baseUrl,
      //返回值格式
      responseType: ResponseType.json,
      validateStatus: (status) {
        // 不使用http状态码判断状态，使用AdapterInterceptor来处理（适用于标准REST风格）
        return true;
      },
      //超时时间
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
    ));
    //缓存拦截器
    _dio.interceptors.add(getCacheManager().interceptor);
    //返回值拦截器
    _dio.interceptors.add(ResponseInterceptors());
    //日志拦截器
    _dio.interceptors.add(DioLogInterceptor());
  }

  //获取单例对象
  static HttpManager getInstance() {
    return _instance;
  }

  ///请求数据
  ///[api]url地址
  ///[params]参数
  ///[method]请求方式
  ///[showLoading]是否显示加载弹窗
  ///[loadingText]弹窗文本
  requestHttp(api, query, method, showLoading, loadingText, {var data, Options options}) async {
    //判断网络连接
    ConnectivityResult connResult = await Connectivity().checkConnectivity();
    if (connResult == ConnectivityResult.none) {
      return ResultData('暂无网络连接!', false, HttpCode.NONE_NETWORK);
    }
    // @todo 待实现参数加密
    if (showLoading) {
      Loading.show(tip: loadingText);
    }
    Response response;
    try {
      if (method == 'GET') {
        ///get请求
        response = await _dio.get(api, queryParameters: query, options: options);
      } else if (method == 'POST') {
        ///默认post请求
        response = await _dio.post(api, queryParameters: query, data: data, options: options);
      } else if (method == 'DELETE') {
        ///默认post请求
        response = await _dio.delete(api, queryParameters: query, options: options);
      } else {
        ///其他请求方式
        response = await _dio.request(api, data: query, options: options);
      }
      if (showLoading) {
        Loading.dismiss();
      }
    } on DioError catch (e) {
      if (showLoading) {
        Loading.dismiss();
      }
      return resultError(e);
    }
    return response.data;
  }
}

///同意处理错误信息
ResultData resultError(DioError e) {
  Response errorResponse;
  if (e.response != null) {
    //请求错误
    errorResponse = Response(statusCode: HttpCode.NETWORK_ERROR, requestOptions: RequestOptions(path: ''));
  } else {
    //其他错误
    errorResponse = Response(statusCode: HttpCode.OTHER_ERROR, requestOptions: RequestOptions(path: ''));
  }
  if (e.type == DioErrorType.connectTimeout || e.type == DioErrorType.receiveTimeout) {
    //设置为超时错误
    errorResponse.statusCode = HttpCode.NETWORK_TIMEOUT;
  }
  return ResultData(errorResponse.statusMessage, false, errorResponse.statusCode);
}
