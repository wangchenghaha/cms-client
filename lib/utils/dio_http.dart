// import 'package:flutter/material.dart';
// import 'package:dio/dio.dart';
// import 'package:cms_client/config/http.dart';


// class DioHttp{
//   Dio _client;
//   BuildContext context;

//   static DioHttp of (BuildContext context) {
//     return DioHttp._internal(context);
//   }

//   // DioHttp._internal(BuildContext context) {
//   //   if(context != this.context){
//   //     this.context = context;
//   //     var options = BaseOptions(
//   //       baseUrl: HttpConfig.BaseUrl,
//   //       connectTimeout: 1000 * 10,
//   //       receiveTimeout: 1000 * 3,
//   //       extra: {'context': context}
//   //     );
//   //     var client = Dio(options);
//   //     _client = client;
//   //   }
//   // }
  
//   Future<Response<Map<String, dynamic>>> get(String path,
//       [Map<String, dynamic>? params, String? token]) async {
//     var options = Options(headers: {'Authorization': token});
//     return await _client.get(path, queryParameters: params, options: options);
//   }

//   Future<Response<Map<String, dynamic>>> post(String path,
//       [Map<String, dynamic>? params, String? token]) async {
//     var options = Options(headers: {'Authorization': token});
//     return await _client.post(path, data: params, options: options);
//   }
// }