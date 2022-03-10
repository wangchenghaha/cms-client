import 'dart:convert';
import 'dart:typed_data';

import 'package:cms/generated/l10n.dart';
import 'package:cms/utils/string_is_null_or_empty.dart';
import 'package:cms/widgets/common_toast.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:cms/router.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  String clientId = '3';
  // 验证码的初始值
  String imgCode =
      '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';

  late Uint8List bytes = Base64Decoder().convert(imgCode);

  bool _isEn = false;

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  void initState() {
    _getCaptcha();
    _intLang();
  }

  @override
  Widget build(BuildContext context) {
    print('count build');

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: const BoxDecoration(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Switch(
                      value: _isEn,
                      onChanged: (isChecked) {
                        setState(() {
                          print(isChecked);
                          _isEn = isChecked;
                        });
                        _setLang();
                      },
                      activeColor: Colors.white,
                      activeTrackColor: Colors.blue,
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                    ),
                  ],
                ),
                const Icon(IconData(0xe710, fontFamily: 'Myfont'),
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
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      color: const Color.fromRGBO(255, 255, 255, 0.1),
                    ),
                    padding: const EdgeInsets.fromLTRB(15, 10, 15, 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 5, 10, 0),
                              child: const Icon(
                                  IconData(0xe70d, fontFamily: 'Myfont'),
                                  color: Colors.white,
                                  size: 20),
                            ),
                            Expanded(
                                child: TextField(
                              controller: usernameController,
                              style: const TextStyle(
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
                                  IconData(0xe70e, fontFamily: 'Myfont'),
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
                                  IconData(0xe70f, fontFamily: 'Myfont'),
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
                              child: SizedBox(
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
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1)),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(30)),
                                color: const Color.fromRGBO(255, 255, 255, 1),
                              ),
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: const [
                                  Expanded(
                                    child: Text(
                                      '登录',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color.fromRGBO(157, 119, 255,
                                              1), // rgba(157, 119, 255, 1)
                                          fontSize: 18,
                                          fontFamily: 'PingFangSC-Medium'),
                                    ),
                                  )
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
    );
  }

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
    // Navigator.pushNamed(context, Routes.home);
    const url = "https://cms-test.bestseller.com.cn/stage-api/auth/login";
    var username = usernameController.text;
    var password = passwordController.text;
    var code = captchaController.text;
    if (stringIsNullOrEmpty(username) || stringIsNullOrEmpty(password)) {
      CommontToast.showToast('请输入用户名或密码！');
      return;
    }
    if (stringIsNullOrEmpty(code)) {
      CommontToast.showToast('请输入验证码！');
      return;
    }
    var data = {
      'username': username,
      'password': password,
      'uuid': uuid,
      'code': code,
      'clientId': clientId,
      'version': "0.0.33"
    };
    var res = await Dio().post(url, data: data);
    if (res.data['code'] == 200) {
      Navigator.pushNamed(context, Routes.home);
    } else {
      CommontToast.showToast(res.data['msg']);
    }
  }

  _intLang() async {
    final SharedPreferences prefs = await _prefs;
    setState(() {
      _isEn = prefs.getBool('isEn')!;
    });
  }

  _setLang() async {
    final SharedPreferences prefs = await _prefs;
    if (_isEn) {
      S.load(Locale('en', 'US'));
      await prefs.setBool('isEn', true);
    } else {
      S.load(Locale('zh', 'CN'));
      await prefs.setBool('isEn', false);
    }
  }
}
