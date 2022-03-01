import 'package:cms_client/router.dart';
import 'package:cms_client/widgets/CommonFloatingButton.dart';
import 'package:cms_client/widgets/commom_image_picker.dart';
import 'package:flutter/material.dart';

class ApplicationSubmitPage extends StatefulWidget {
  const ApplicationSubmitPage({Key? key}) : super(key: key);
  @override
  State<ApplicationSubmitPage> createState() => _ApplicationSubmitPageState();
}

class _ApplicationSubmitPageState extends State<ApplicationSubmitPage> {
  var isActive = true;
  // Color defaultBackgroundColor;
  // Color ActiveBagroundColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('申请达人'),
      ),
      floatingActionButton: isActive
          ? CommonFloatingButton('提交', const Color.fromRGBO(158, 157, 255, 1),
              Colors.white, (){
                _submit();
              })
          : CommonFloatingButton('提交', const Color.fromRGBO(179, 187, 196, 1),
              Colors.white, nullFun),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
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
                        CommonImagePicker('正面照'),
                        CommonImagePicker('侧面照')
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          // Positioned(
          //   bottom: 60,
          //   left: 20,
          //   right: 20,
          //   child: GestureDetector(
          //     onTap: (){
          //       _submit();
          //     },
          //     child: Container(
          //       padding: EdgeInsets.all(10),
          //         decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(20),
          //             color: Colors.blue),
          //             alignment: Alignment.center,
          //         child: Expanded(
          //           child: Text(
          //             '提交',
          //             style: TextStyle(color: Colors.white,fontSize: 16),
          //           ),
          //         )),
          //   ))
        ],
      ),
    );
  }

  Function nullFun = () => {};
  _submit() async {
    Navigator.pushNamed(context, Routes.applicationSubmitSuccess);
  }
}
