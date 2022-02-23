
import 'package:flutter/material.dart';
import 'package:cms_client/widgets/page_content.dart';

class TabDaren extends StatefulWidget {
  const TabDaren({ Key? key }) : super(key: key);

  @override
  _TabDarenState createState() => _TabDarenState();
}

class _TabDarenState extends State<TabDaren> {
  @override
  Widget build(BuildContext context) {
    return const PageContent(name: '达人');
  }
}