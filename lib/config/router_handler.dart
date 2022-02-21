
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:cms_client/pages/home/index.dart';
import 'package:cms_client/pages/login.dart';
import 'package:cms_client/pages/not_found.dart'; 
 
// 定义路由处理函数
var homeHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const HomePage();
});

Handler loginHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const LoginPage();
});
Handler NotFoundHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const NotFound();
});