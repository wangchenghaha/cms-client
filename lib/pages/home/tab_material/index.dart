
import 'package:cms_client/pages/home/tab_material/recommend.dart';
import 'package:flutter/material.dart';


class TabMaterial extends StatefulWidget {
  const TabMaterial({ Key? key }) : super(key: key);

  @override
  _TabMaterialState createState() => _TabMaterialState();
}

class _TabMaterialState extends State<TabMaterial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('素材库'),),
      body: ListView(
        children: const [
          Recommend(),
        ],
      ),
    );
  }
}