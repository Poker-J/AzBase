
import 'package:az_base/routers/navigator_util.dart';
import 'package:dio/dio.dart';

import '../index.dart';
import 'http_code.dart';
import 'result_data.dart';

//对象
OnRequestListener onRequestListener;


///请求前回调监听器
abstract class OnRequestListener{
  void onRequestCallback(RequestOptions options, RequestInterceptorHandler handler);
}

/// 数据初步处理
class ResponseInterceptors extends InterceptorsWrapper {


  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {

    print('-------onRequestListener--------->$onRequestListener');
    onRequestListener.onRequestCallback(options,handler);

    /***
     * 添加自定义请求头
     */
    super.onRequest(options,handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    try {
      //请求成功
      if (response.statusCode == 200) {
        //获取请求成功code
        int code = response.data["code"];
        //正常
        if (code == 0 || code == 200) {
          response.data = ResultData(response.data, true, HttpCode.SUCCESS, headers: response.headers);
          handler.next(response);
          return;
        } else {
          showToast(response.data["msg"]);
          ///处理其他非0情况
          response.data =
              ResultData(response.data["msg"], true, HttpCode.OTHER_ERROR, headers: response.headers);
          handler.next(response);
          return;
        }
      } else if ([301, 302, 303, 307].contains(response.statusCode)) {
        response.data = ResultData(response.data, true, HttpCode.SUCCESS);
        handler.next(response);
        return;
      }else if(response.statusCode == 401){
        response.data = ResultData(response.data["msg"], false, HttpCode.OTHER_ERROR, headers: response.headers);
        handler.next(response);
        return;
        /// token 失效
      }else if(response.statusCode == 503){
        /// 系统升级
        NavigatorUtil.goToSystemUpgradePage(params: {
          'tip':response.data
        });
      }else if(response.statusCode == 600){
        showToast(response.data["msg"]);
        handler.next(response);
        return;
      } else {
        //showToast('系统错误!');
        print('-------------服务器返回非200------------>');
        response.data = ResultData(response.data["msg"], false, HttpCode.OTHER_ERROR, headers: response.headers);
        handler.next(response);
        return;
      }
    } catch (e) {
      print(e);
      //接口错误
      response.data = ResultData(response.data, false, HttpCode.NETWORK_ERROR, headers: response.headers);
      handler.next(response);
      return;
    }
  }
}


