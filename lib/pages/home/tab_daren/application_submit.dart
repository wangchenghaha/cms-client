import 'package:cms_client/widgets/commom_image_picker.dart';
import 'package:cms_client/widgets/common_text.dart';
import 'package:flutter/material.dart';

class ApplicationSubmitPage extends StatelessWidget {
  const ApplicationSubmitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('申请达人'),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 50),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '申请人DA号',
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
                const Text(
                  'DA00599309',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  '申请人姓名',
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
                const Text(
                  '王某某',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: const [
                    Text('上传照片'),
                    Icon(Icons.info_outline,
                        color: Color.fromRGBO(144, 142, 255, 1), size: 20),
                  ],
                ),
                Padding(padding: EdgeInsets.only(bottom: 10.0)),
                Wrap(
                  spacing: 10.0,
                  runSpacing: 10.0,
                  children: const [
                    CommonImagePicker(),
                    CommonImagePicker()
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
