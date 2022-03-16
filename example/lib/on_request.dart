import 'package:az_base/services/response_interceptor.dart';
import 'package:dio/src/dio_mixin.dart';
import 'package:dio/src/options.dart';


class OnRequestList extends OnRequestListener{
  @override
  void onRequestCallback(RequestOptions options, RequestInterceptorHandler handler) {
    // TODO: implement onRequestCallback
      options.headers['tenantId'] = '246895475509879413';
      options.headers['districtCode'] =  '150000000000';
      options.headers['appId'] = 'default';
      options.headers['clientId'] = 'nmgPortalApp';
  }

}