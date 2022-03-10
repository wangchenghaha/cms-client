import 'package:cms/pages/home/tab_daren/index.dart';
import 'package:cms/pages/home/tab_material/index.dart';
import 'package:cms/pages/home/tab_goods/index.dart';
import 'package:flutter/material.dart';
import 'package:cms/pages/home/tab_todo/index.dart';
import 'package:cms/pages/catalog.dart';
import 'package:cms/pages/home/tab_profile/index.dart';

List<Widget> tabViewList = [
  const TabIndex(),
  // const CataLog(),

  const TabGoods(),
  const TabDaren(),

  const TabMaterial(),
  const TabProfile(),
];

List<BottomNavigationBarItem> barItemList = [
  const BottomNavigationBarItem(
      label: '待办', icon: Icon(IconData(0xe617, fontFamily: 'Myfont'))),
  const BottomNavigationBarItem(
      label: '商品', icon: Icon(IconData(0xe618, fontFamily: 'Myfont'))),
  const BottomNavigationBarItem(
      label: '达人', icon: Icon(IconData(0xe616, fontFamily: 'Myfont'))),
  const BottomNavigationBarItem(
      label: '素材库', icon: Icon(IconData(0xe61a, fontFamily: 'Myfont'))),
  const BottomNavigationBarItem(
      label: '我的', icon: Icon(IconData(0xe619, fontFamily: 'Myfont'))),
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // setState(() {
    //   var homeSelectIndex = context.read<HomeSelectIndexModel>().homeSelectIndex;
    //   if(homeSelectIndex != 0){
    //     _selectedIndex = context.read<HomeSelectIndexModel>().homeSelectIndex;
    //   }
    // });
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
