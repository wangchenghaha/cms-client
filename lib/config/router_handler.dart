
import 'package:cms_client/pages/catalog.dart';
import 'package:cms_client/pages/roomDetail.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:cms_client/pages/home/index.dart';
import 'package:cms_client/pages/cart.dart';
import 'package:cms_client/pages/login.dart';
import 'package:cms_client/pages/not_found.dart'; 
import 'package:cms_client/pages/roomDetail.dart'; 
 
// 定义路由处理函数
Handler NotFoundHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const NotFound();
});
var homeHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const HomePage();
});
var productHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const HomePage();
});
Handler CartHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const Cart();
});
Handler loginHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const LoginPage();
});

Handler RoomDetailHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return RoomDetailPage(roomId: params['roomId'][0],);
});