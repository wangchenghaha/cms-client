import 'package:flutter/material.dart';
import 'package:cms_client/router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                                  child: TextFormField(
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
                                  child: TextFormField(
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
                                  child: TextFormField(
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
                              Container(
                                  width: 100,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/valideCode.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  )),
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
                              Navigator.pushNamed(context, Routes.home);
                            },
                          )
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
