import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {
  const NotFound({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('404'),elevation: 1,),
      body: const Center(child: Text('您访问的页面不存在！')),
    );
  }
} 