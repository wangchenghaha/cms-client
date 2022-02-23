import 'dart:convert';
import 'dart:typed_data';

import 'package:cms_client/utils/string_is_null_or_empty.dart';
import 'package:cms_client/widgets/common_toast.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:cms_client/router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  var captchaController = TextEditingController();
  String uuid = '';
  String clientId = '1';
  late Uint8List bytes;

  _getCaptcha() async {
    const url = "https://cms-test.bestseller.com.cn/stage-api/code";
    var res = await Dio().get(url);
    if (res.data['code'] == 200) {
      setState(() {
        // 将String转换成Uint8List格式
        bytes = Base64Decoder().convert(res.data['img']);
        uuid = res.data['uuid'];
      });
    }
  }

  _login() async {
    const url = "https://cms-test.bestseller.com.cn/stage-api/auth/login";
    var username = usernameController.text;
    print(username);
    var password = passwordController.text;
    print(password);
    var code = captchaController.text;
    print(code);
    print(uuid);
    if(stringIsNullOrEmpty(username) || stringIsNullOrEmpty(password)){
      CommontToast.showToast('请输入用户名或密码！');
      return;
    }
    if(stringIsNullOrEmpty(code)){
      CommontToast.showToast('请输入验证码！');
      return;
    }
    var data = FormData.fromMap({
      'username': username,
      'password': password,
      'uuid': uuid,
      'code': code,
      'clientId': clientId,
      'version': "0.0.33"
    });
    var res = await Dio().post(url, data: data);
    print(res.data);
    print(res.data['msg']);
    if (res.data['code'] == 200) {
      print(res.data['img'].toString());
      Navigator.pushNamed(context, Routes.home);
    }else{
      CommontToast.showToast(res.data['msg']);
    }
  }

  @override
  void initState() {
    print('count initState');
    _getCaptcha();
  }

  @override
  Widget build(BuildContext context) {
    print('count build');

    return Scaffold(
      body: Container(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Rectangle.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(IconData(0xe707, fontFamily: 'Myfont'),
                      color: Colors.white, size: 124),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    '内容管理系统',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const Text(
                    'Content Management System',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: const Color.fromRGBO(255, 255, 255, 0.1)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16)),
                        color: const Color.fromRGBO(255, 255, 255, 0.1),
                      ),
                      padding: const EdgeInsets.fromLTRB(15, 10, 15, 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 5, 10, 0),
                                child: Icon(
                                    IconData(0xe706, fontFamily: 'Myfont'),
                                    color: Colors.white,
                                    size: 20),
                              ),
                              Expanded(
                                  child: TextField(
                                controller: usernameController,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                                decoration: const InputDecoration(
                                  hintText: '请输入用户名DA号',
                                  hintStyle: TextStyle(color: Colors.white),
                                  fillColor: Colors.white,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                ),
                                obscureText: false,
                              ))
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 5, 10, 0),
                                child: const Icon(
                                    IconData(0xe704, fontFamily: 'Myfont'),
                                    color: Colors.white,
                                    size: 20),
                              ),
                              Expanded(
                                  child: TextField(
                                controller: passwordController,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                                decoration: const InputDecoration(
                                  hintText: '请输入密码',
                                  hintStyle: TextStyle(color: Colors.white),
                                  fillColor: Colors.white,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                ),
                                obscureText: true,
                              ))
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 5, 10, 0),
                                child: const Icon(
                                    IconData(0xe705, fontFamily: 'Myfont'),
                                    color: Colors.white,
                                    size: 20),
                              ),
                              Expanded(
                                  child: TextField(
                                controller: captchaController,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                                decoration: const InputDecoration(
                                  hintText: '验证码',
                                  hintStyle: TextStyle(color: Colors.white),
                                  fillColor: Colors.white,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                ),
                                obscureText: false,
                              )),
                              GestureDetector(
                                child: Container(
                                  width: 100,
                                  height: 40,
                                  child: Image.memory(
                                    bytes,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                onTap: () {
                                  _getCaptcha();
                                },
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          GestureDetector(
                            child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1,
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30)),
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            '登录',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    157,
                                                    119,
                                                    255,
                                                    1), // rgba(157, 119, 255, 1)
                                                fontSize: 18,
                                                fontFamily:
                                                    'PingFangSC-Medium'),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                )),
                            onTap: () {
                              _login();
                            },
                          ),
                        ],
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
