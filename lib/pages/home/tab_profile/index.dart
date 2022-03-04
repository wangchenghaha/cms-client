import 'package:flutter/material.dart';

class TabProfile extends StatefulWidget {
  const TabProfile({Key? key}) : super(key: key);

  @override
  _TabProfileState createState() => _TabProfileState();
}

class _TabProfileState extends State<TabProfile> {
  final TextStyle _textStyle = TextStyle(
    color: Color.fromRGBO(56, 56, 116, 1),
    fontSize: 12,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('我的'),
        ),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1, color: Color(0XFFD3D7E0)), // #FFD3D7E0
                    ),
                    color: Colors.white),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 54,
                          height: 54,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/avatar.jpeg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 10)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "李军伟 ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                            Text("LiJunwei")
                          ],
                        )
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    CommonRow('北京财富中心', 0xe622),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    CommonRow('Java开发工程师', 0xe620),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    CommonRow('lijunwei@bestseller.com.cn', 0xe621),
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 160,
                child: GestureDetector(
                  onTap: () {
                    _showLangDialog();
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                            top: BorderSide(
                                width: 0.5, color: Color(0xFFD3D7E0)),
                            bottom: BorderSide(
                                width: 0.5, color: Color(0xFFD3D7E0)))),
                    child: Text(
                      '简历中文',
                      style: TextStyle(color: Color(0xFF9C908EFF)),
                    ),
                  ),
                )),
            Positioned(
                bottom: 100,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                          top: BorderSide(width: 0.5, color: Color(0xFFD3D7E0)),
                          bottom: BorderSide(
                              width: 0.5, color: Color(0xFFD3D7E0)))),
                  child: Text(
                    '退出登录',
                    style: TextStyle(color: Color(0xFF9C908EFF)),
                  ),
                ))
          ],
        ));
  }

  _showLangDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('切换语言'),
          children: <Widget>[
            new SimpleDialogOption(
              child: new Text('简体中文'),
              onPressed: () {
                print('1');
              },
            ),
            new SimpleDialogOption(
              child: new Text('English'),
              onPressed: () {
                print('2');
              },
            ),
          ],
        );
      },
    );
  }
}

class CommonRow extends StatelessWidget {
  TextStyle _textStyle = TextStyle(
    color: Color.fromRGBO(56, 56, 116, 1),
    fontSize: 12,
  );
  String text;
  int codePoint;

  CommonRow(
    this.text,
    this.codePoint, {
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(IconData(codePoint, fontFamily: 'Myfont'),
            color: Color(0xFFD7D7DF), size: 16),
        Padding(padding: EdgeInsets.only(left: 10)),
        Text(
          text,
          // textAlign: TextAlign.center,
          style: _textStyle,
        )
      ],
    );
  }
}
