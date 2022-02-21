
import 'package:flutter/material.dart';
import 'package:cms_client/widgets/page_content.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const PageContent(name: '登录');
  }
}