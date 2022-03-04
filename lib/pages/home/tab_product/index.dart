
import 'package:flutter/material.dart';

class TabProduct extends StatefulWidget {
  const TabProduct({ Key? key }) : super(key: key);

  @override
  _TabProductState createState() => _TabProductState();
}

class _TabProductState extends State<TabProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('商品'),elevation: 1,),
      body: const Text('这是商品！'),
    );
  }
}