
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './application.dart';
import './daren_index.dart';

class TabDaren extends StatefulWidget {
  const TabDaren({ Key? key }) : super(key: key);

  @override
  _TabDarenState createState() => _TabDarenState();
}

class _TabDarenState extends State<TabDaren> {
  var isDaren = false;

  @override
  void initState() {
    // 强制横屏
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, 
      DeviceOrientation.portraitDown]
    );
  }

  @override
  Widget build(BuildContext context) {
    if(isDaren){
      return DarenIndexPage();
    }else{
      return Application();
    }
  }
}