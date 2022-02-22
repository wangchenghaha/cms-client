
import 'package:flutter/material.dart';
import 'package:cms_client/widgets/page_content.dart';

class TabIndex extends StatefulWidget {
  const TabIndex({ Key? key }) : super(key: key);

  @override
  _TabIndexState createState() => _TabIndexState();
}

class _TabIndexState extends State<TabIndex> {
  @override
  Widget build(BuildContext context) {
    return const PageContent(name: '首页');
  }
}