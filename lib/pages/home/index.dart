
import 'package:flutter/material.dart';
import 'package:cms_client/widgets/page_content.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const PageContent(name: '首页');
  }
}