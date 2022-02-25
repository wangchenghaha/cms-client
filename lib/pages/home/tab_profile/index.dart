
import 'package:flutter/material.dart';
import 'package:cms_client/widgets/page_content.dart';

class TabProfile extends StatefulWidget {
  const TabProfile({ Key? key }) : super(key: key);

  @override
  _TabProfileState createState() => _TabProfileState();
}

class _TabProfileState extends State<TabProfile> {
  @override
  Widget build(BuildContext context) {
    return PageContent(name: '我的');
  }
}