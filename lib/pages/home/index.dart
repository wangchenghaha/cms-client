import 'package:flutter/material.dart';
import 'package:cms_client/pages/home/tab_index/index.dart';
import 'package:cms_client/pages/home/tab_profile/index.dart';

List<Widget> tabViewList = [
  const TabIndex(),
  const TabProfile(),
];

List<BottomNavigationBarItem> barItemList = [
  const BottomNavigationBarItem(label: '首页', icon: Icon(Icons.home)),
  const BottomNavigationBarItem(label: '我的', icon: Icon(Icons.account_circle)),
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
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
