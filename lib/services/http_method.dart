import 'package:dio/dio.dart';
import 'http_manager.dart';

// 请求方式工具类
class HttpMethod {
  // GET
  static get(
    String url, {
    Map<String, dynamic> query,
    showLoading = false,
    loadingText = '提交中...',
    Options options,
  }) {
    return HttpManager.getInstance().requestHttp(
      url,
      query,
      'GET',
      showLoading,
      loadingText,
      options: options,
    );
  }

  // POST
  static post(
    String url, {
    Map<String, dynamic> query,
    dynamic data,
    showLoading = false,
    loadingText = '提交中...',
    Options options,
  }) {
    return HttpManager.getInstance().requestHttp(
      url,
      query,
      'POST',
      showLoading,
      loadingText,
      data: data,
      options: options,
    );
  }

  // DELETE
  static delete(
    String url, {
    Map<String, dynamic> query,
    showLoading = false,
    loadingText = '保存中...',
    Options options,
  }) {
    return HttpManager.getInstance().requestHttp(
      url,
      query,
      'DELETE',
      showLoading,
      loadingText,
      options: options,
    );
  }
}
