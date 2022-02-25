import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('达人'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const Icon(IconData(0xe707, fontFamily: 'Myfont'),
                    color: Colors.white, size: 124),
              ],
            ),
            SizedBox(
              child: Text('申请成为达人'),
            ),
            SizedBox(
              child: Column(
                children: [
                  Text('想拥有很多粉丝群体，且具有影响力吗？'),
                  Text('快来申请成为达人吧！'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
