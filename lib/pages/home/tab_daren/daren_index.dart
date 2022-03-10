import 'package:cms/router.dart';
import 'package:flutter/material.dart';

class DarenIndexPage extends StatelessWidget {
  const DarenIndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('达人'), elevation: 0),
      body: ListView(
        padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.taskList);
            },
            child: Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromRGBO(127, 48, 205, 1), //rgb(127, 48, 205) 100%
              ),
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        '任务大厅',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(IconData(0xe706, fontFamily: 'Myfont'),
                          color: Colors.white, size: 40),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Expanded(
                          child: Text(
                        '这是任务大厅描述这是任务大厅描述这是任务大厅描述这是任务大厅描述这是任务大厅描述，这是任务大厅描述.',
                        style: TextStyle(color: Colors.white),
                      ))
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color.fromRGBO(168, 44, 206, 1),
            ),
            child: Column(
              children: [
                Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      '我的任务',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    )),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(IconData(0xe706, fontFamily: 'Myfont'),
                        color: Colors.white, size: 40),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Expanded(
                        child: Text(
                      '这是任务大厅描述这是任务大厅描述这是任务大厅描述这是任务大厅描述这是任务大厅描述，这是任务大厅描述.',
                      style: TextStyle(color: Colors.white),
                    ))
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color.fromRGBO(49, 159, 204, 1), //rgb(49, 159, 204) 100%
            ),
            child: Column(
              children: [
                Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      '我的奖励',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    )),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(IconData(0xe706, fontFamily: 'Myfont'),
                        color: Colors.white, size: 40),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Expanded(
                        child: Text(
                      '这是任务大厅描述这是任务大厅描述这是任务大厅描述这是任务大厅描述这是任务大厅描述，这是任务大厅描述.',
                      style: TextStyle(color: Colors.white),
                    ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
