import 'package:cms_client/pages/home/tab_daren/index.dart';
import 'package:cms_client/pages/home/tab_material/index.dart';
import 'package:cms_client/pages/image.dart';
// import 'package:cms_client/pages/home/tab_product/index.dart';
import 'package:flutter/material.dart';
import 'package:cms_client/pages/home/tab_todo/index.dart';
import 'package:cms_client/pages/catalog.dart';
import 'package:cms_client/pages/home/tab_profile/index.dart';

List<Widget> tabViewList = [
  const TabIndex(),
  const CataLog(),

  // const TabProduct(),
  const TabDaren(),
  const MyHomePage(title: 'Image Picker Example'),

  // const TabMaterial(),
  const TabProfile(),
];

List<BottomNavigationBarItem> barItemList = [
  const BottomNavigationBarItem(label: '待办', icon: Icon(Icons.list_alt_outlined)),
  const BottomNavigationBarItem(label: '商品', icon: Icon(Icons.badge_outlined)),
  const BottomNavigationBarItem(label: '达人', icon: Icon(Icons.diamond_rounded)),
  const BottomNavigationBarItem(label: '素材库', icon: Icon(Icons.layers)),
  const BottomNavigationBarItem(label: '我的', icon: Icon(Icons.account_circle)),
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 2;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabViewList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: barItemList,
        currentIndex: _selectedIndex,
        fixedColor: const Color.fromRGBO(157, 119, 255, 1),
        onTap: _onItemTapped,
      ),
    );
  }
}
