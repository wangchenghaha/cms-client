
import 'package:cms_client/models/daren.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import './application.dart';
import './daren_index.dart';

class TabDaren extends StatefulWidget {
  const TabDaren({ Key? key }) : super(key: key);

  @override
  _TabDarenState createState() => _TabDarenState();
}

class _TabDarenState extends State<TabDaren> {

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
    var isDaren = context.read<DarenModel>().isDaren;
    if(isDaren){
      return DarenIndexPage();
    }else{
      return Application();
    }
  }
}