import 'package:cms/widgets/page_content.dart';
import 'package:flutter/material.dart';

class TabMaterial extends StatefulWidget {
  const TabMaterial({Key? key}) : super(key: key);

  @override
  _TabMaterialState createState() => _TabMaterialState();
}

class _TabMaterialState extends State<TabMaterial> {
  @override
  Widget build(BuildContext context) {
    return PageContent(name: '素材库');
  }
}
