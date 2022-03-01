import 'package:cms_client/router.dart';
import 'package:cms_client/widgets/CommonFloatingButton.dart';
import 'package:flutter/material.dart';

class ApplicationSubmitSuccessPage extends StatelessWidget {
  const ApplicationSubmitSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Padding(padding: EdgeInsets.only(top: 50)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(IconData(0xe707, fontFamily: 'Myfont'),
                      color: Colors.blue, size: 100),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 18)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('申请成功',style: TextStyle(
                    color: Colors.black,
                    fontSize: 30
                  ),)
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 15)),
              Text('审核通过后，就可以上传个人作品啦',style: TextStyle(
                    color: Color.fromRGBO(179, 187, 196, 1),
                  )),
              Text('请耐心等待…',style: TextStyle(
                    color: Color.fromRGBO(179, 187, 196, 1),
                  )),
              Padding(padding: EdgeInsets.only(top: 50)),
              CommonFloatingButton('返回首页', const Color.fromRGBO(158, 157, 255, 1),
              Colors.white, (){
                _goHome(context);
              })
          ]
        ),
      ),
    );
  }
  _goHome(context) async{
    Navigator.pushNamed(context, Routes.home);
  }
}