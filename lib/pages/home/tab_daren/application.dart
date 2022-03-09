import 'package:cms_client/generated/l10n.dart';
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
        title: Text(S.of(context).KOC),
        elevation: 1,
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(IconData(0xe706, fontFamily: 'Myfont'),
                    color: Color.fromRGBO(144, 142, 255, 1), size: 100),
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(5,20,5,5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    S.of(context).KOCApplication,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                                   Text(
                    S.of(context).KOCApplication,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.center,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(S.of(context).ApplyMsg1,textAlign: TextAlign.center),
                    Text(S.of(context).ApplyMsg2),
                  ],
                ),
            ),
            SizedBox(
              height: 120,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10,0,10,0),
              child: GestureDetector(
                child: Container(
                    padding: EdgeInsets.all(15),
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
                            S.of(context).Apply,
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                Text(S.of(context).agree),
                GestureDetector(
                  child: Text(S.of(context).attorney,style: TextStyle(
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
