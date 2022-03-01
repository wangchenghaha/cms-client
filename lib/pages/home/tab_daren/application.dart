import 'package:cms_client/router.dart';
import 'package:flutter/material.dart';

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('达人'),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(IconData(0xe706, fontFamily: 'Myfont'),
                    color: Colors.blue, size: 124),
              ],
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '申请成为达人',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            SizedBox(
              child: Column(
                children: [
                  Text('想拥有很多粉丝群体，且具有影响力吗？'),
                  Text('快来申请成为达人吧！'),
                ],
              ),
            ),
            SizedBox(
              height: 120,
            ),
            GestureDetector(
              child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        color: const Color.fromRGBO(157, 119, 255, 1)),
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    color: const Color.fromRGBO(157, 119, 255, 1),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          '立即申请',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: const Color.fromRGBO(
                                  255, 255, 255, 1), // rgba(157, 119, 255, 1)
                              fontSize: 18,
                              fontFamily: 'PingFangSC-Medium'),
                        ),
                      ),
                    ],
                  )),
              onTap: () {
                _apply();
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  // fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                Text('我同意'),
                GestureDetector(
                  child: Text('《绫致时装肖像使用协议》',style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),),
                  onTap: (){
                    _linkToAgreement();
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
  void _apply() async {
    Navigator.pushNamed(context, Routes.applicationSubmit);
  }

  void _linkToAgreement() {
    Navigator.pushNamed(context, Routes.powerAttorney);
  }
}
