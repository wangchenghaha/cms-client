
import 'package:flutter/material.dart';
import 'package:cms_client/router.dart'; 


class PageContent extends StatelessWidget {
  final String name;
  const PageContent({ Key? key, required this.name }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
      appBar: AppBar(title: Text('当前页面：$name'),),
      body: ListView(children: <Widget>[
          ElevatedButton(
            style: style,
            onPressed: (){
              Navigator.pushNamed(context, Routes.home);
            },
            child: const Text('首页'),
          ),
          ElevatedButton(
            style: style,
            onPressed: (){
              Navigator.pushNamed(context, Routes.login);
            },
            child: const Text('登陆'),
          ),
          ElevatedButton(
            style: style,
            onPressed: (){
              Navigator.pushNamed(context, '/aaaa');
            },
            child: const Text('不存在的页面'),
          ),
          ElevatedButton(
            style: style,
            onPressed: (){
              Navigator.pushNamed(context, '/room/1111');
            },
            child: const Text('房屋详情页，id: 1111'),
          ),
      ],),
    );
  }
}