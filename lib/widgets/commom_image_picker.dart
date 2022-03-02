import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:video_player/video_player.dart';

class CommonImagePicker extends StatefulWidget {
  final Title;

  const CommonImagePicker(this.Title, {Key? key}) : super(key: key);

  @override
  State<CommonImagePicker> createState() => _CommonImagePickerState();
}

class _CommonImagePickerState extends State<CommonImagePicker> {
  var _imgPath;

  @override
  Widget build(BuildContext context) {
    var ImageWidth = (MediaQuery.of(context).size.width - 30.0) / 2;
    var ImageHeight = ImageWidth * 213 / 160;
    if (_imgPath == null) {
      return Column(
        children: [
          GestureDetector(
            onTap: () {
              _openGallery();
            },
            child: Container(
              color: Colors.black12,
              width: ImageWidth,
              height: ImageHeight,
              child: ConstrainedBox(
                constraints: const BoxConstraints.expand(),
                child: Stack(
                  alignment: Alignment.center,
                  children: const [
                    Positioned(
                        child: Center(
                      child: Icon(Icons.perm_identity,
                          color: Colors.black12, size: 100,
                          ),
                    )),
                    Positioned(
                        child: Center(
                      child: Icon(Icons.photo_camera,
                          color: Colors.blue, size: 40),
                    ))
                  ],
                ),
              ),
            )),
          Container(
            width: ImageWidth,
            padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
            alignment: Alignment.center,
            child: Text(widget.Title),
          )
        ],
      );
    } else {
      return Container(
        width: ImageWidth,
        height: ImageHeight,
        child: Image.file(
          _imgPath,
        ),
      );
    }
  }

  // /*图片控件*/
  // Widget _ImageView(imgPath) {
  //   if (imgPath == null) {
  //     return Center(
  //       child: Text("请选择图片或拍照"),
  //     );
  //   } else {
  //     return Image.file(
  //       imgPath,
  //     );
  //   }
  // }

  /*拍照*/
  // _takePhoto() async {
  //   final ImagePicker _picker = ImagePicker();
  //   // Pick an image
  //   final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
  //   setState(() {
  //     _imgPath = image;
  //   });
  // }

  /*相册*/
  _openGallery() async {
    final ImagePicker _picker = ImagePicker();
    // Pick an image
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _imgPath = image;
    });
  }
}
