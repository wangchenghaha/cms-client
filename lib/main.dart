import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './application.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); //不加这个强制横/竖屏会报错
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp, 
    DeviceOrientation.portraitDown
  ]);
  runApp(const MyApp());
}
