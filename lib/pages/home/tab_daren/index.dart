
import 'package:flutter/material.dart';
import './application.dart';

class TabDaren extends StatefulWidget {
  const TabDaren({ Key? key }) : super(key: key);

  @override
  _TabDarenState createState() => _TabDarenState();
}

class _TabDarenState extends State<TabDaren> {
  @override
  Widget build(BuildContext context) {
    if(true){
      return Application();
    }else{
      return Container();
    }
  }
}