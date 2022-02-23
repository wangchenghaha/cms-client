import 'package:flutter/material.dart';

class TabIndex extends StatefulWidget {
  const TabIndex({Key? key}) : super(key: key);

  @override
  _TabIndexState createState() => _TabIndexState();
}

class _TabIndexState extends State<TabIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('待办'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromRGBO(0, 198, 173, 1) //#00c5ad
                  ),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(bottom: 10),
              // margin: ,
              height: 100,
              child: Column(
                children:[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(IconData(0xe706, fontFamily: 'Myfont'),
                          color: Colors.white, size: 18),
                      Text(
                        '平铺图',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // margin: const EdgeInsets.only(top: -10),
                    children: [
                      Text(
                        '21',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromRGBO(117, 112, 255, 1) //#00c5ad
                  ),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(bottom: 10),
              // margin: ,
              height: 100,
              child: Column(
                children:[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(IconData(0xe706, fontFamily: 'Myfont'),
                          color: Colors.white, size: 18),
                      Text(
                        '写词',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // margin: const EdgeInsets.only(top: -10),
                    children: [
                      Text(
                        '21',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromRGBO(255, 112, 120, 1) //#00c5ad
                  ),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(bottom: 10),
              // margin: ,
              height: 100,
              child: Column(
                children:[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(IconData(0xe706, fontFamily: 'Myfont'),
                          color: Colors.white, size: 18),
                      Text(
                        '导购视频申请',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // margin: const EdgeInsets.only(top: -10),
                    children: [
                      Text(
                        '21',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromRGBO(36, 168, 242, 1) //#00c5ad
                  ),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(bottom: 10),
              // margin: ,
              height: 100,
              child: Column(
                children:[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(IconData(0xe706, fontFamily: 'Myfont'),
                          color: Colors.white, size: 18),
                      Text(
                        '详情页编辑',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // margin: const EdgeInsets.only(top: -10),
                    children: [
                      Text(
                        '21',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromRGBO(255, 175, 72, 1) //#00c5ad
                  ),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(bottom: 10),
              // margin: ,
              height: 100,
              child: Column(
                children:[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(IconData(0xe706, fontFamily: 'Myfont'),
                          color: Colors.white, size: 18),
                      Text(
                        '发布',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // margin: const EdgeInsets.only(top: -10),
                    children: [
                      Text(
                        '21',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
