
import 'package:flutter/material.dart';
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
  Widget build(BuildContext context) {
    if(isDaren){
      return DarenIndexPage();
    }else{
      return Application();
    }
  }
}